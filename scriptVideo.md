Script vidéo retravaillé
## Slide 1 — Page de garde

Bonjour, nous allons vous présenter notre SAÉ de base de données sur le thème du transport public.
Nous avons choisi de concevoir une base de données sur le métro parisien.
Pour cette présentation, nous sommes partis d’un cahier des charges fictif, basé sur une demande de la RATP.
Nous allons montrer la base de données que nous avons créée pour répondre à ce besoin, en présentant :

la modélisation,
la création de la base,
l’insertion des données,
puis les requêtes d’analyse.

Slide 2 — Besoin du client / cahier des charges
Nous sommes partis d’une demande fictive de la RATP.
Le client souhaite disposer d’une base de données simple permettant de représenter le réseau du métro parisien.
Les besoins principaux sont les suivants :
enregistrer les lignes de métro,
enregistrer les stations,
enregistrer les trajets,
enregistrer les horaires de passage.
Cette base doit aussi permettre d’exécuter des requêtes pour analyser les dessertes, les horaires et l’organisation du réseau.
Cette démarche correspond bien à l’objectif de la SAE, qui demande de partir d’un scénario modélisé par la base de données.

##Slide 3 — Choix du thème##
Ce sujet est cohérent avec le thème transport public demandé dans la SAE.
Il permet de construire une base relationnelle avec plusieurs tables liées entre elles, tout en restant sur un cas concret, compréhensible et proche d’une situation réelle.
Le métro parisien est un bon exemple, car on y retrouve naturellement des lignes, des stations, des trajets et des horaires.

##Slide 4 — Démarche générale##
Nous avons procédé en plusieurs étapes.
D’abord, nous avons défini le besoin du client et les objets à représenter.
Ensuite, nous avons construit le modèle logique de données.
Après cela, nous avons écrit un script PostgreSQL pour créer le schéma et les tables.
Nous avons ensuite préparé un jeu de données, puis réalisé des requêtes SQL pour exploiter la base.
Enfin, nous avons organisé notre travail en groupe grâce à un dépôt GitHub partagé, ce qui nous a permis de centraliser nos scripts et de suivre les modifications.
Cette démarche suit directement les étapes demandées dans le sujet de SAE.

##Slide 5 — Présentation des tables##
Notre base repose principalement sur quatre tables principales, ainsi qu’une table d’association.
La table ligne contient les informations sur les lignes de métro, comme le nom de la ligne, la couleur, les terminus ou encore la longueur.
La table station contient les informations sur les stations, par exemple leur nom, leur localisation, leur accessibilité PMR, leur ville ou leur code postal.
La table trajet représente un trajet associé à une ligne, avec une heure de départ et une heure d’arrivée.
La table passage permet de relier un trajet à différentes stations, en précisant l’ordre de passage et l’heure de passage.
Enfin, nous avons utilisé une table d’association pour représenter les stations desservies par chaque ligne.
Ce choix nous permet de représenter la circulation d’une rame sur plusieurs stations, tout en gardant une base bien structurée.

##Slide 6 — Justification du modèle##
Nous avons choisi cette structure pour éviter de mettre toutes les informations dans une seule table.
Cela permet d’avoir une base mieux organisée, avec moins de répétitions et une meilleure cohérence.
Chaque table représente un objet précis, et les relations entre les tables sont assurées par des clés étrangères.
Cette organisation facilite les jointures et rend les requêtes d’analyse plus claires.
Comme demandé dans la SAE, nous avons donc construit une base relationnelle avec plusieurs tables liées entre elles.

##Slide 7 — Création de la base et contraintes##
Dans le script SQL, nous avons utilisé des clés primaires pour identifier chaque ligne, chaque station, chaque trajet et chaque passage.
Nous avons aussi utilisé des clés étrangères pour relier les tables entre elles.
Enfin, nous avons ajouté des contraintes de cohérence, par exemple pour éviter certains doublons, garantir l’existence des liens entre les tables, et garder des données valides.
Le sujet demande bien un script PostgreSQL de création du schéma et des tables, ce que nous avons réalisé dans notre projet.

##Slide 8 — Jeu de données##
Pour alimenter notre base de donnée nous avons chercher sur internet des CSV existant qui listes les stations. Ensuite nous avons créer différent script python. 
Ainsi nous avons pu créer les différent script d'insertion sql en partant des CSV que nous avions trouver.
Le premier script nous permet de créer les lignes de métro, les station et les dessertes.
Le second nous permet de créer les trajets sur chaque lignes.
Nous avons créer autant de trajet qu'il y en a en moyenne par ligne et par jours et avec des horaire et des temps de trajet cohérent en ajoutant des incertitude retard.
Cela nous permet d'avoir un grande jeu de donnée pertinent pour l'étudier ensuite.

##Slide 9 — Pourquoi GitHub##
Pour travailler en groupe, nous avons utilisé GitHub.
Cela nous a permis de centraliser les scripts SQL, de suivre les modifications, et d’éviter de nous envoyer les fichiers par mail.
Le dépôt regroupe le schéma, les scripts de création, les scripts d’insertion et le script de présentation.
C’était donc un outil utile pour organiser le travail collaboratif et garder un historique propre de nos modifications.

##Slide 10 — Exemples de requêtes possibles##
Sur notre base de données, nous pouvons exécuter différentes requêtes d’analyse.
Par exemple, nous pouvons :
  - Compter le nombre de stations accessibles PMR par département
  - Calculer le temps de trajet moyen pour chaque ligne
  - Identifier les lignes ayant le plus de retard
  - Trouver les stations avec le plus de passages par jour
  - Comparer les lignes les plus rapides en moyenne
  - Compter le nombre de stations par ligne
  - Repérer les stations avec le plus de correspondances
  - Identifier les lignes avec le plus de stations PMR
  - Déterminer les heures de début et de fin de service de chaque ligne
  - Calculer le temps moyen entre deux stations sur une même ligne
Cela correspond aussi à la consigne qui demande de proposer 10 requêtes SQL et leur interprétation.

##Slide 11 — Intérêt analytique##
Ce projet ne sert pas seulement à stocker des données.
Il permet aussi de les exploiter pour produire des indicateurs utiles.
À partir des requêtes, on peut par exemple analyser le nombre de stations par ligne, la répartition des stations accessibles, les horaires de circulation ou encore la fréquence des passages.
Ces résultats peuvent ensuite être représentés sous forme de graphiques, ce qui correspond à l’objectif d’analyse structurée demandé dans la SAE.

##Slide 12 — Conclusion##
Pour conclure, notre projet répond à une demande fictive cohérente de la RATP, dans le cadre du thème transport public.
Nous avons conçu une base de données relationnelle structurée autour des lignes, des stations, des trajets et des passages.
Ce projet nous a permis de mettre en pratique les notions vues en cours, notamment :

la modélisation relationnelle,
la création de tables,
les relations entre tables,
l’insertion de données,
et les requêtes SQL.

Nous avons ainsi réalisé un projet complet, allant de la conception de la base jusqu’à l’analyse des données.
