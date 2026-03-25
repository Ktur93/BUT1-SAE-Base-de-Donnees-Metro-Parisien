"""
generer_inserts.py
------------------
Lit le fichier CSV des gares/stations IDF et génère un fichier SQL
contenant les INSERT pour les tables :
  - ligne
  - station
  - dessert  (association ligne <-> station)

Usage :
    python3 generer_inserts.py
    python3 generer_inserts.py --csv mon_fichier.csv --out inserts.sql
"""

import argparse
import csv
import re
import sys
from pathlib import Path


# ──────────────────────────────────────────────────────────────────────────────
# Helpers
# ──────────────────────────────────────────────────────────────────────────────

def escape(value: str) -> str:
    """Échappe les apostrophes pour SQL."""
    if value is None:
        return "NULL"
    return "'" + str(value).replace("'", "''") + "'"


def nullable_int(value) -> str:
    """Convertit en entier ou NULL."""
    try:
        v = int(float(value))
        return str(v)
    except (ValueError, TypeError):
        return "NULL"


def nullable_float(value) -> str:
    """Convertit en float ou NULL."""
    try:
        return str(float(value))
    except (ValueError, TypeError):
        return "NULL"


# Couleurs officielles des lignes de métro parisien
COULEURS_METRO = {
    "1":    "#FFBE00",
    "2":    "#003CA6",
    "3":    "#837902",
    "3bis": "#6EC4E8",
    "4":    "#CF009E",
    "5":    "#FF7E2E",
    "6":    "#6ECA97",
    "7":    "#FA9ABA",
    "7b":   "#6ECA97",
    "8":    "#E19BDF",
    "9":    "#B6BD00",
    "10":   "#C9910D",
    "11":   "#704B1C",
    "12":   "#007852",
    "13":   "#6EC4E8",
    "14":   "#9F9825",
}


# ──────────────────────────────────────────────────────────────────────────────
# Parsing
# ──────────────────────────────────────────────────────────────────────────────

def lire_csv(chemin: str) -> list[dict]:
    """Lit le CSV en gérant le BOM UTF-8 et le séparateur automatique."""
    path = Path(chemin)
    if not path.exists():
        print(f"[ERREUR] Fichier introuvable : {chemin}", file=sys.stderr)
        sys.exit(1)

    # Détecter le séparateur
    with open(path, encoding="utf-8-sig", newline="") as f:
        sample = f.read(4096)

    sep = ";" if sample.count(";") > sample.count(",") else ","

    rows = []
    with open(path, encoding="utf-8-sig", newline="") as f:
        reader = csv.DictReader(f, delimiter=sep)
        # Normaliser les noms de colonnes (strip + minuscule)
        reader.fieldnames = [c.strip().lower() for c in reader.fieldnames]
        for row in reader:
            rows.append({k.strip().lower(): v.strip() for k, v in row.items()})

    print(f"[INFO] {len(rows)} lignes lues depuis {chemin}")
    return rows


def extraire_lat_lon(geo_point: str) -> tuple[str, str]:
    """
    Extrait lat/lon depuis une chaîne du type '48.863, 2.346'.
    Retourne ('NULL', 'NULL') si invalide.
    """
    if not geo_point:
        return "NULL", "NULL"
    parts = re.split(r"[,\s]+", geo_point.strip())
    if len(parts) >= 2:
        try:
            return str(round(float(parts[0]), 6)), str(round(float(parts[1]), 6))
        except ValueError:
            pass
    return "NULL", "NULL"


def construire_nom_ligne(mode: str, indice: str, res_com: str) -> str:
    """Construit un nom lisible pour la ligne."""
    mode = (mode or "").upper()
    if mode == "METRO":
        return f"Ligne {indice}"
    if mode in ("RER", "TRAIN", "TRAMWAY", "TRAM"):
        return res_com or f"{mode} {indice}"
    return res_com or f"{mode} {indice}"


def construire_couleur(mode: str, indice: str) -> str:
    """Retourne la couleur hex de la ligne (métro uniquement pour l'instant)."""
    if (mode or "").upper() == "METRO":
        return COULEURS_METRO.get(indice, "#888888")
    return "#888888"


# ──────────────────────────────────────────────────────────────────────────────
# Construction des entités
# ──────────────────────────────────────────────────────────────────────────────

def construire_lignes(rows: list[dict]) -> dict[str, dict]:
    """
    Retourne un dict clé = (mode, indice_lig) → données ligne.
    Seules les lignes de métro (mode == METRO) sont conservées.
    """
    lignes = {}
    for row in rows:
        mode     = (row.get("mode") or "").strip().upper()
        indice   = (row.get("indice_lig") or "").strip()
        res_com  = (row.get("res_com") or "").strip()

        if not indice or not mode:
            continue

        # On ne garde que le métro
        if mode != "METRO":
            continue

        cle = (mode, indice)
        if cle not in lignes:
            lignes[cle] = {
                "numero_ligne": indice,
                "nom_ligne":    construire_nom_ligne(mode, indice, res_com),
                "couleur_hex":  construire_couleur(mode, indice),
                "mode":         mode,
            }

    print(f"[INFO] {len(lignes)} lignes de métro détectées")
    return lignes


def construire_stations(rows: list[dict]) -> dict[int, dict]:
    """
    Retourne un dict id_ref_ZdC → données station.
    Seules les stations de métro sont conservées.
    """
    stations = {}
    for row in rows:
        mode = (row.get("mode") or "").strip().upper()
        if mode != "METRO":
            continue
        try:
            sid = int(row.get("id_ref_zdc") or row.get("id_ref_zdc") or 0)
        except ValueError:
            continue
        if sid == 0 or sid in stations:
            continue

        geo_point = row.get("geo point") or row.get("﻿geo point") or ""
        lat, lon  = extraire_lat_lon(geo_point)

        nom = (row.get("nom_long") or row.get("nom_zdC") or "").strip()

        # Code postal : lu directement depuis la colonne générée par l'étape précédente
        code_postal = nullable_int(row.get("code_postal") or row.get("code postal") or "")

        # Ville : déduite du code postal (75xxx = Paris, sinon commune via nom_ZdA)
        try:
            cp_int = int(code_postal)
            if 75001 <= cp_int <= 75020:
                ville = "Paris"
            else:
                ville = (row.get("nom_zda") or nom or "").strip() or "Île-de-France"
        except (ValueError, TypeError):
            ville = (row.get("nom_zda") or nom or "").strip() or "Île-de-France"

        # PMR : non disponible dans le CSV, FALSE par défaut
        pmr = "FALSE"

        stations[sid] = {
            "station_id": sid,
            "nom_station": nom,
            "ville": ville,
            "latitude": lat,
            "longitude": lon,
            "accessibilite_pmr": pmr,
            "code_postal": code_postal,
        }

    print(f"[INFO] {len(stations)} stations de métro détectées")
    return stations


def construire_dessert(rows: list[dict],
                       lignes_index: dict,
                       stations: dict) -> list[tuple[str, int]]:
    """
    Retourne une liste de (cle_ligne, station_id) pour la table dessert.
    cle_ligne est la clé (mode, indice) qui servira à récupérer ligne_id.
    """
    dessert = set()
    for row in rows:
        mode   = (row.get("mode") or "").strip().upper()
        indice = (row.get("indice_lig") or "").strip()
        try:
            sid = int(row.get("id_ref_zdc") or 0)
        except ValueError:
            continue

        cle = (mode, indice)
        if cle in lignes_index and sid in stations:
            dessert.add((cle, sid))

    print(f"[INFO] {len(dessert)} associations dessert détectées")
    return list(dessert)


# ──────────────────────────────────────────────────────────────────────────────
# Génération SQL
# ──────────────────────────────────────────────────────────────────────────────

def generer_sql(lignes: dict, stations: dict, dessert: list, chemin_out: str):
    lines = []

    lines.append("-- ============================================================")
    lines.append("--  INSERTS AUTOMATIQUES - MÉTRO / GARES IDF")
    lines.append("--  Généré par generer_inserts.py")
    lines.append("-- ============================================================")
    lines.append("")
    lines.append("SET FOREIGN_KEY_CHECKS = 0;")
    lines.append("")

    # ── TABLE ligne ──────────────────────────────────────────────────────────
    lines.append("-- ------------------------------------------------------------")
    lines.append("--  TABLE ligne")
    lines.append("-- ------------------------------------------------------------")
    lines.append("TRUNCATE TABLE dessert;")
    lines.append("TRUNCATE TABLE ligne;")
    lines.append("")

    # Tri pour un rendu lisible
    lignes_triees = sorted(lignes.items(), key=lambda kv: (kv[0][0], kv[0][1]))

    # On assigne un ligne_id entier dans l'ordre d'insertion
    ligne_id_map: dict[tuple, int] = {}
    for idx, (cle, data) in enumerate(lignes_triees, start=1):
        ligne_id_map[cle] = idx

    for cle, data in lignes_triees:
        lid = ligne_id_map[cle]
        lines.append(
            f"INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) \n    VALUES ("
            f"{lid}, "
            f"{escape(data['numero_ligne'])}, "
            f"{escape(data['nom_ligne'])}, "
            f"{escape(data['couleur_hex'])}"
            f");"
        )

    lines.append("")

    # ── TABLE station ─────────────────────────────────────────────────────────
    lines.append("-- ------------------------------------------------------------")
    lines.append("--  TABLE station")
    lines.append("-- ------------------------------------------------------------")
    lines.append("TRUNCATE TABLE passage;")
    lines.append("TRUNCATE TABLE station;")
    lines.append("")

    for sid, data in sorted(stations.items()):
        lines.append(
            f"INSERT INTO station "
            f"(station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) \n    VALUES ("
            f"{data['station_id']}, "
            f"{escape(data['nom_station'])}, "
            f"{escape(data['ville'])}, "
            f"{data['latitude']}, "
            f"{data['longitude']}, "
            f"{data['accessibilite_pmr']}, "
            f"{data['code_postal']}"
            f");"
        )

    lines.append("")

    # ── TABLE dessert ─────────────────────────────────────────────────────────
    lines.append("-- ------------------------------------------------------------")
    lines.append("--  TABLE dessert")
    lines.append("-- ------------------------------------------------------------")
    lines.append("")

    for cle, sid in sorted(dessert, key=lambda x: (ligne_id_map.get(x[0], 0), x[1])):
        lid = ligne_id_map.get(cle)
        if lid is None:
            continue
        lines.append(
            f"INSERT INTO dessert (ligne_id, station_id) \n    VALUES ({lid}, {sid});"
        )

    lines.append("")
    lines.append("SET FOREIGN_KEY_CHECKS = 1;")
    lines.append("")
    lines.append("-- FIN DU FICHIER")

    with open(chemin_out, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    print(f"[OK] Fichier généré : {chemin_out}")
    print(f"     {len(lignes_triees)} lignes | {len(stations)} stations | {len(dessert)} associations dessert")


# ──────────────────────────────────────────────────────────────────────────────
# Main
# ──────────────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Génère les INSERT SQL depuis le CSV IDF")
    parser.add_argument(
        "--csv",
        default="station_metro_paris_cp.csv",
        help="Chemin vers le fichier CSV source"
    )
    parser.add_argument(
        "--out",
        default="inserts_metro_idf_final.sql",
        help="Fichier SQL de sortie"
    )
    args = parser.parse_args()

    rows     = lire_csv(args.csv)
    lignes   = construire_lignes(rows)
    stations = construire_stations(rows)
    dessert  = construire_dessert(rows, lignes, stations)
    generer_sql(lignes, stations, dessert, args.out)


if __name__ == "__main__":
    main()