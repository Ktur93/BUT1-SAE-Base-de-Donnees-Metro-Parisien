import random
import math
from unidecode import unidecode
from scriptMetroNouveauCSV2 import *
from script import construireDicoStationIdStation, construireDicoStationId
file = open("metro_rer_idf.csv", "r", encoding="utf-8")

Metro = construire_lignes(file)

TempsDeParcours = {
    'METRO 1' : 37,
    'METRO 2' : 34,
    'METRO 3' : 32,
    'METRO 3BIS' : 4,
    'METRO 4' : 35,
    'METRO 5' : 35,
    'METRO 6' : 34,
    'METRO 7' : 46,
    'METRO 7BIS' : 9,
    'METRO 8' : 52,
    'METRO 9' : 51,
    'METRO 10' : 28,
    'METRO 11' : 25,
    'METRO 12' : 44,
    'METRO 13' : 36,
    'METRO 14' : 40
}
hDhFdA = { #'Metro' : [heureDebut, heureFin, deltaMoyen]
    'METRO 1' : [[5, 32, 0], [0, 51, 0], 3],
    'METRO 2' : [[5, 41, 0], [0, 59, 0], 4],
    'METRO 3' : [[5, 41, 0], [0, 58, 0], 5],
    'METRO 3BIS' : [[5, 29, 0], [1, 6, 0], 6],
    'METRO 4' : [[5, 30, 0], [0, 41, 0], 3],
    'METRO 5' : [[5, 33, 0], [0, 44, 0], 4],
    'METRO 6' : [[5, 50, 0], [1, 7, 0], 5],
    'METRO 7' : [[5, 41, 0], [0, 46, 0], 4],
    'METRO 7BIS' : [[5, 34, 0], [0, 58, 0], 5],
    'METRO 8' : [[5, 41, 0], [0, 49, 0], 3],
    'METRO 9' : [[5, 52, 0], [1, 7, 0], 3],
    'METRO 10' : [[5, 38, 0], [0, 58, 0], 4],
    'METRO 11' : [[5, 30, 0], [0, 51, 0], 3],
    'METRO 12' : [[6, 7, 0], [22, 40, 0], 3],
    'METRO 13' : [[5, 30, 0], [1,9, 0], 3],
    'METRO 14' : [[5, 30, 0], [0, 58, 0], 2]
}

ligneToId = {
    'METRO 1' : 1,
    'METRO 2' : 2,
    'METRO 3' : 3,
    'METRO 3BIS' : 4,
    'METRO 4' : 5,
    'METRO 5' : 6,
    'METRO 6' : 7,
    'METRO 7' : 8,
    'METRO 7BIS' : 9,
    'METRO 8' : 10,
    'METRO 9' : 11,
    'METRO 10' : 12,
    'METRO 11' : 13,
    'METRO 12' : 14,
    'METRO 13' : 15,
    'METRO 14' : 16
}

def trajet(nbArrets, heureDepart) :
    delaiMin = 1
    delaiMax = 2
    horraire = []
    horraire.append(heureDepart)
    for i in range(1, nbArrets) :
        delai = random.randint(delaiMin, delaiMax) 
        heureDepart = heurePlusDelai(heureDepart, delai)
        horraire.append([heureDepart[0], heureDepart[1]])
    return horraire


def heurePlusDelai(heure, delai) : 
    heure[1] += delai
    if heure[1] >= 60 :
        heure[0] += 1
        heure[1] = 0
        if heure[0] >= 24 :
            heure[0] = 0
    return heure



def getIdByName(dico, station) : 
    dico = construireDicoStationIdStation()
    station = unidecode(station.replace(" ", "").lower())
    station = station.replace("-", "")
    station = station.replace("'", "")
    if (station in dico) :
        return dico[station]
    else :
        return None

def calculDeltaStation(station1, station2):
    lat1 = float(station1[2])
    lon1 = float(station1[3])
    lat2 = float(station2[2])
    lon2 = float(station2[3])
    lat1, lon1, lat2, lon2 = map(math.radians, [lat1, lon1, lat2, lon2])
    dlat = lat2 - lat1
    dlon = lon2 - lon1
    a = math.sin(dlat/2)**2 + math.cos(lat1) * math.cos(lat2) * math.sin(dlon/2)**2
    c = 2 * math.atan2(math.sqrt(a), math.sqrt(1 - a))
    R = 6371
    return R * c

def calculDeltaLigne(ligne) : 
    res = 0
    for i in range(len(ligne)-1) :
        res += calculDeltaStation(ligne[i], ligne[i+1])
    return res

def calculProportion(ligne, station1, station2) :
    deltaTotal = calculDeltaLigne(ligne)
    deltaStation1 = 0
    deltaStation2 = 0
    for i in range(len(ligne)-1) :
        if (ligne[i][0] == station1) :
            deltaStation1 = calculDeltaStation(ligne[i], ligne[i+1])
        if (ligne[i][0] == station2) :
            deltaStation2 = calculDeltaStation(ligne[i], ligne[i+1])
    return (deltaStation1 + deltaStation2) / deltaTotal

def ajoutProportion(ligne):
    deltaTotal = calculDeltaLigne(ligne)
    res = {}
    for i in range(len(ligne) - 1):
        delta = calculDeltaStation(ligne[i], ligne[i+1])
        res[ligne[i][0], ligne[i+1][0]] = delta / deltaTotal
    return res

def floatToTime(duree_minutes):
    m = int(duree_minutes)
    s = round((duree_minutes - m) * 60)
    if s == 60:
        m += 1
        s = 0
    return m, s

def ajouter_temps(tab, ajout):
    h, m, s = tab
    ajout_m, ajout_s = ajout
    s += ajout_s
    m += s // 60
    s = s % 60
    m += ajout_m
    h += m // 60
    m = m % 60
    return [h, m, s]


def calculTempsParcours(nom_ligne, ligne) :
    proportion = ajoutProportion(ligne)
    tempsParcours = {}
    for key, value in proportion.items() :
        try : 
            tempsParcours[key] = floatToTime(value * ((TempsDeParcours[nom_ligne])-(0.5*len(ligne))))
        except KeyError:
            tempsParcours[key[0:6]] = floatToTime(value * ((TempsDeParcours[nom_ligne + ' 1'])-(0.5*len(ligne))))
    return tempsParcours

import random

def insertitudeRetardAvance():
    r = random.random() 
    if r < 0.95:
        return floatToTime(random.uniform(0, 0.30))
    elif r < 0.98:
        return floatToTime(random.uniform(-1, 0))
    elif r < 0.999:
        return floatToTime(random.uniform(0.30, 2))
    elif r < 0.9999:
        return floatToTime(random.uniform(2, 5))
    else:
        return floatToTime(10 + (random.random() ** 2) * 20)


def creationTrajet(numtrajet, numPassage, nom_ligne, ligne, heureDepart, sens) :
    if (isinstance(ligne[0][0], str)) :
        dico =  construireDicoStationIdStation()
        for i in range(len(ligne)) : 
            ligne[i][0] = getIdByName(dico, ligne[i][0])
    trajet = {}
    passage = []
    nbArrets = len(ligne)
    horraire = [heureDepart]
    TempsDeParcours = calculTempsParcours(nom_ligne, ligne)
    if (sens == 1) :
        i = 0
        while i<nbArrets-1 :
            h = ajouter_temps(horraire[-1], TempsDeParcours[ligne[i][0], ligne[i+1][0]])
            h = ajouter_temps(h, [0, 30])
            z = insertitudeRetardAvance()
            h = ajouter_temps(h, z)
            horraire.append([h[0], h[1], h[2]])
            passage.append([numPassage, numtrajet, ligne[i][0], i, horraire[i]])
            numPassage += 1
            i += 1
        passage.append([numPassage, numtrajet, ligne[i][0], i, horraire[i]])
        numPassage += 1
    else :
        i = nbArrets - 1
        while i>0 :
            i -= 1
    return passage, numPassage

def delta_minutes(t1, t2):
    s1 = t1[0]*3600 + t1[1]*60 + t1[2]
    s2 = t2[0]*3600 + t2[1]*60 + t2[2]
    delta = s2 - s1
    if delta < 0:
        delta += 24 * 3600
    return delta / 60

def sec_to_hms(t):
    h = int(t // 3600)
    m = int((t % 3600) // 60)
    s = int(t % 60)
    if h == 24:
        h = 0
    return [h, m, s]

def hms_to_sec(hms):
    return hms[0]*3600 + hms[1]*60 + hms[2]

def sec_to_hms_24h(sec):
    h = (sec // 3600) % 24
    sec %= 3600
    m = sec // 60
    s = sec % 60

    if h == 24:
        h = 0
    return [h, m, s]

def gauss(x, mu, sigma):
    return math.exp(-((x - mu) ** 2) / (2 * sigma ** 2))

def generer_horaires(nom_ligne, hDhFdA, pic_matin, pic_soir, ecart_type=1800, variation=30):
    debut_sec = hms_to_sec(hDhFdA[nom_ligne][0])
    fin_sec   = hms_to_sec(hDhFdA[nom_ligne][1])
    if fin_sec <= debut_sec:
        fin_sec += 24*3600 
    delta_moyen = hDhFdA[nom_ligne][2] * 60
    pic_matin_sec = hms_to_sec(pic_matin)
    pic_soir_sec  = hms_to_sec(pic_soir)

    horaires = []
    t = debut_sec

    while t <= fin_sec:
        densite = gauss(t, pic_matin_sec, ecart_type) + gauss(t, pic_soir_sec, ecart_type)
        densite = min(densite, 1) 
        intervalle = delta_moyen * (1 - 0.5 * densite) 
        intervalle += random.randint(-variation, variation)  
        t += max(intervalle, 30)  
        horaires.append(sec_to_hms_24h(int(t)))
    return horaires

def creationAllTrajetParLigne(numtrajet, numPassage, nom_ligne, ligne) :
    passageT = []
    trajet = []
    trajets = []
    horraireDepart = generer_horaires(nom_ligne, hDhFdA, [7, 0, 0], [17, 30, 0])
    for i in range(len(horraireDepart)-1) :
        heureDepart = horraireDepart[i]
        trajet, numPassage = creationTrajet(numtrajet, numPassage, nom_ligne, ligne, heureDepart, 1)
        passageT.append(trajet)
        numtrajet += 1
    for i in range(len(passageT)):
        trajets.append([passageT[i][0][1], ligneToId[nom_ligne], passageT[i][0][4], passageT[i][-1][4]])
    res = {"passage" : passageT, "trajet" : trajets}
    return res

def genererSQL(res) :
    sql_passage = "INSERT INTO passage (passage_id, trajet_id, station_id, ordre_station, heure_passage) VALUES\n"
    sql_trajet = "INSERT INTO trajet (trajet_id, ligne_id, heure_depart, heure_arrivee) VALUES\n"
    for passage in res["passage"]:
        for p in passage:
            sql_passage += f"({p[0]}, {p[1]}, {p[2]}, {p[3]}, '{p[4][0]%24:02d}:{p[4][1]:02d}:{p[4][2]:02d}'),\n"
    for trajet in res["trajet"]:
        sql_trajet += f"({trajet[0]}, {trajet[1]}, '{trajet[2][0]%24:02d}:{trajet[2][1]:02d}:{trajet[2][2]:02d}', '{trajet[3][0]%24:02d}:{trajet[3][1]:02d}:{trajet[3][2]:02d}'),\n"
    sql_passage = sql_passage.rstrip(",\n") + ";"
    sql_trajet = sql_trajet.rstrip(",\n") + ";"
    return sql_passage, sql_trajet

def genererSQLFichier(res, nom_fichier):
    sql_passage, sql_trajet = genererSQL(res)
    with open(f"insert/{nom_fichier}_passage.sql", "w") as f:
        f.write(sql_passage)
    with open(f"insert/{nom_fichier}_trajet.sql", "w") as f:
        f.write(sql_trajet)

def genererAllTrajet(Metro, MetroN) :
    numtrajet = 1
    numPassage = 1
    for key in MetroN.keys() :
        try :
            res = creationAllTrajetParLigne(numtrajet, numPassage, key, Metro[key])
            numtrajet = res["trajet"][-1][0] + 1
            numPassage = res["passage"][-1][-1][0] + 1
            genererSQLFichier(res, key)
        except KeyError :
            #print("metro key :", key)
            k = key + ' 1'
            #print("metro key :", k)
            res = creationAllTrajetParLigne(numtrajet, numPassage, key, Metro[k])
            genererSQLFichier(res, key)
            numtrajet = res["trajet"][-1][0] + 1
            numPassage = res["passage"][-1][-1][0] + 1
            #print("metro key :", key)
            #print("metroN key :", Metro[k])

import os

def combiner_sql(dossier, fichier_final="combined.sql"):
    # Vérifie que le dossier existe
    if not os.path.isdir(dossier):
        raise ValueError(f"Le dossier '{dossier}' n'existe pas.")

    # Liste tous les fichiers SQL dans le dossier
    fichiers_sql = [f for f in os.listdir(dossier) if f.endswith(".sql")]

    # Tri optionnel pour que l'ordre soit stable
    fichiers_sql.sort()

    # Crée le fichier combiné
    chemin_final = os.path.join(dossier, fichier_final)
    with open(chemin_final, "w", encoding="utf-8") as sortie:
        for fichier in fichiers_sql:
            chemin_fichier = os.path.join(dossier, fichier)
            with open(chemin_fichier, "r", encoding="utf-8") as f:
                contenu = f.read()
                sortie.write(f"-- Début de {fichier} --\n")
                print("compile : ", fichier)
                sortie.write(contenu)
                sortie.write(f"\n-- Fin de {fichier} --\n\n")
    
    print(f"Tous les fichiers SQL ont été combinés dans : {chemin_final}")

genererAllTrajet(Metro, TempsDeParcours)
#genererSQLFichier(r, "metro1_insert.sql")

combiner_sql("insert", "insert_trajets.sql")
