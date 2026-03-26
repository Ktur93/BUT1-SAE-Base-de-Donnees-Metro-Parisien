## Slide 1 — Page de garde
Bonjour, nous allons vous présenter notre SAÉ de base de données sur le thème du transport public.
Notre projet consiste à concevoir une base de données relationnelle sur le métro parisien.
Dans cette présentation, nous allons expliquer le besoin du client, notre modélisation, la création de la base, l’insertion des données, puis quelques requêtes d’analyse.


## Slide 2 — Besoin du client / cahier des charges
Nous sommes partis d’une demande fictive de la RATP.
Le client souhaite disposer d’une base de données simple permettant de représenter une partie du réseau de métro parisien.
Les besoins principaux sont les suivants : enregistrer les lignes, les stations, les trajets, ainsi que les passages dans les stations.
Cette base doit aussi permettre d’exécuter des requêtes pour analyser les dessertes, les horaires et l’organisation du réseau.


## Slide 3 — Choix du thème
Ce sujet est cohérent avec le thème transport public demandé dans la SAE.
Il permet de construire une base relationnelle avec plusieurs tables liées entre elles, tout en restant dans un cas concret facile à comprendre.
Le métro parisien est un bon exemple, car il contient naturellement des lignes, des stations, des trajets et des horaires. 


## Slide 4 — Démarche générale
Nous avons procédé en plusieurs étapes.
D’abord, nous avons défini le besoin et les objets à représenter.
Ensuite, nous avons construit un schéma logique de données.
Puis nous avons écrit un script SQL pour créer la base.
Après cela, nous avons préparé un jeu de données et nous avons réalisé des requêtes SQL pour exploiter la base.
Enfin, nous avons organisé notre travail en groupe à l’aide d’un dépôt GitHub partagé.
Mini slide sur le github


## Slide 5 — Présentation des tables
afficher le schéma.
Notre base repose principalement sur quatre tables principales.
La table ligne contient les informations sur les lignes de métro.
La table station contient les stations.
La table trajet représente un trajet associé à une ligne, avec une heure de départ et une heure d’arrivée.
La table passage permet de relier un trajet à différentes stations, en précisant l’ordre de passage et l’heure de passage.
Ce choix nous permet de représenter la circulation d’un trajet sur plusieurs stations.
Nous avons également utilisé une table d’association pour représenter les stations desservies par une ligne.

## Slide 6 — Justification du modèle
Nous avons choisi cette structure pour éviter de mettre toutes les informations dans une seule table.
Cela permet d’avoir une base mieux organisée, avec moins de répétitions.
Chaque table représente un objet précis, et les relations entre tables sont assurées par des clés étrangères.
Cette organisation facilite les jointures et les requêtes d’analyse.


## Slide 7 — Exemple de contraintes
Dans le script SQL, nous avons utilisé des clés primaires pour identifier chaque ligne, chaque station, chaque trajet et chaque passage.
Nous avons aussi utilisé des clés étrangères pour relier les tables entre elles.
Enfin, nous avons ajouté quelques contraintes de cohérence, par exemple pour éviter des doublons ou garantir la validité de certaines données.


## Slide 8 — Jeu de données
Nous avons ensuite préparé un jeu de données pour alimenter la base.
Nous avons inséré plusieurs lignes de métro ainsi qu’un grand nombre de stations du réseau francilien.
Ce jeu de données nous permet de tester les relations entre les tables et de produire des résultats exploitables pour les requêtes.


## Slide 9 — Pourquoi GitHub
Pour travailler en groupe, nous avons utilisé GitHub.
Cela nous a permis de centraliser les scripts SQL, de suivre les modifications, et d’éviter de nous envoyer les fichiers par mail.
Le dépôt regroupe notre schéma, nos scripts de création et nos scripts d’insertion, ce qui facilite le travail collaboratif. 


## Slide 10 — Exemples de requêtes possibles
Là, tu peux annoncer sans trop détailler encore :
Une fois la base créée et alimentée, nous pouvons poser plusieurs questions à la base de données.
Par exemple :
quelles stations sont desservies par une ligne donnée,
quels sont les passages d’un trajet,
ou encore quels trajets appartiennent à une ligne.
Ces requêtes permettent ensuite de faire des analyses et des représentations graphiques.


## Slide 11 — Intérêt analytique
Ce projet ne sert pas seulement à stocker des données.
Il permet aussi de les exploiter.
À partir des requêtes, on peut par exemple analyser le nombre de stations par ligne, les trajets enregistrés par ligne, ou encore la répartition des passages.
Cela rejoint l’objectif de la SAE, qui est à la fois de concevoir une base relationnelle et d’analyser les données. 


## Slide 12 — Conclusion
Pour conclure, notre projet répond à une demande fictive cohérente de la RATP, dans le cadre du thème transport public.
Nous avons conçu une base de données relationnelle simple, structurée autour des lignes, des stations, des trajets et des passages.
Ce projet nous a permis de mettre en pratique les notions vues en cours, notamment la modélisation relationnelle, la création de tables, les relations entre tables, l’insertion de données et les requêtes SQL.
