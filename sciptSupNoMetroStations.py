import pandas as pd

INPUT_FILE  = "stationMetroP.csv"
OUTPUT_FILE = "stations_metro_paris.csv"

# Chargement du CSV (détection automatique du séparateur)
df = pd.read_csv(INPUT_FILE, sep=None, engine="python")

print(f"Stations totales  : {len(df)}")
print(f"Modes disponibles : {df['mode'].unique().tolist()}")

# Filtrage : on garde uniquement le métro
df_metro = df[df["mode"] == "METRO"].copy()

print(f"Stations métro    : {len(df_metro)}")
print(f"Lignes de métro   : {sorted(df_metro['indice_lig'].unique().tolist())}")

# Sauvegarde
df_metro.to_csv(OUTPUT_FILE, index=False, encoding="utf-8-sig")
print(f"\nFichier généré : {OUTPUT_FILE}")