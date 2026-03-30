## Slide 1 — Page de garde
Bonjour, nous allons vous présenter notre SAÉ de base de données sur le thème du transport public.
Nous avons décidé de concevoir une base de données sur le metro parisien.
Pour cette présentation, nous avons établit un cahier des charges fictif partant d'une demande de la RATP. Nous montrerons ainsi la base de donnée que nous avons créer pour y répondre.
En passant par :
  - la modélisation
  - la création
  - l'insertion des données
  - les requêtes d'analyse


## Slide 2 — Besoin du client / cahier des charges
Nous sommes donc partis d’une demande fictive de la RATP.
Le client souhaite disposer d’une base de données simple permettant de représenter le réseau du métro parisien.
Les besoins principaux sont les suivants : enregistrer les lignes, les stations ainsi que les horraires de passage de chaque trajet.
Cette base doit aussi permettre d’exécuter des requêtes pour analyser les dessertes, les horaires et l’organisation du réseau.


//## Slide 3 — Choix du thème
//Ce sujet est cohérent avec le thème transport public demandé dans la SAE.
//Il permet de construire une base relationnelle avec plusieurs tables liées entre elles, tout en restant dans un cas concret facile à comprendre.
//Le métro parisien est un bon exemple, car il contient naturellement des lignes, des stations, des trajets et des horaires. 



## Slide 4 — Démarche générale
Nous avons procédé en plusieurs étapes.
D’abord, nous avons défini le besoin et les objets à représenter.
Ensuite, nous avons construit un schéma logique de données.
Puis nous avons écrit un script SQL pour créer la base.
Après cela, nous avons préparé un jeu de données et nous avons réalisé des requêtes SQL pour exploiter la base.
Enfin, nous avons organisé notre travail en groupe à l’aide d’un dépôt GitHub partagé.
Mini slide sur le github


## Slide 5 — Présentation des tables (afficher le schéma)
Notre base repose principalement sur quatre tables principales.
La table ligne qui contient les informations sur les lignes de métro (nom de la ligne, couleurs en hexa, terminus, longueurs en km).
La table station qui contient les stations avec des information comme leurs localisation GPS, si elles ont ou non un accès PMR, la ville où elles se trouvent, leurs code postal et l'identification de la ligne corespondant à la l'idrefligc, identification commerciale des stations.
La table trajet qui représente un trajet associé à une ligne, avec une heure de départ et une heure d’arrivée.
La table passage qui permet de relier un trajet à différentes stations, en précisant l’ordre de passage et l’heure de passage.
Ce choix nous permet de représenter la circulation d’une rame sur plusieurs stations.
Nous avons également utilisé une table d’association pour représenter les stations desservies par une ligne.

//## Slide 6 — Justification du modèle
//Nous avons choisi cette structure pour éviter de mettre toutes les informations dans une seule table.
//Cela permet d’avoir une base mieux organisée, avec moins de répétitions.
//Chaque table représente un objet précis, et les relations entre tables sont assurées par des clés étrangères.
//Cette organisation facilite les jointures et les requêtes d’analyse.


//## Slide 7 — Exemple de contraintes
//Dans le script SQL, nous avons utilisé des clés primaires pour identifier chaque ligne, chaque station, chaque trajet et chaque passage.
//Nous avons aussi utilisé des clés étrangères pour relier les tables entre elles.
//Enfin, nous avons ajouté quelques contraintes de cohérence, par exemple pour éviter des doublons ou garantir la validité de certaines données.


## Slide 8 — Jeu de données
Pour alimenter notre base de donnée nous avons chercher sur internet des CSV existant qui listes les stations. Ensuite nous avons creer different script python. 
Ainsi nous avons pu créer les different script d'insertion sql en partant des CSV que nous avions trouver.
Le prermier script nous permet de créer les lignes de métro, les station et les dessertes.
Le second nous permet de créer les trajets sur chaques lignes.
Nous avons créer autant de trajet qu'il y en a en moyenne par ligne et par jours et avec des horraire et des temps de jrajet cohérent en ajoutant des insertitude retard.
Cela nous permet d'avoir un grande jeu de donnée pertinant pour l'étudier ensuite.



## Slide 9 — Pourquoi GitHub
Pour travailler en groupe, nous avons utilisé GitHub.
Cela nous a permis de centraliser les scripts SQL, de suivre les modifications, et d’éviter de nous envoyer les fichiers par mail.
Le dépôt regroupe notre schéma, nos scripts de création et nos scripts d’insertion, ce qui facilite le travail collaboratif. 


## Slide 10 — Exemples de requêtes possibles
Sur notre base donné, nous pouvons donc exécuter des requetes permettant :
  - de contabiliser le nombre de station accessible PMR par département ou encore d'étudier leurs proportion
  - de connaitre le temps de trajet moyenne pour chaque ligne
  - de connaitre les lignes avec le plus de retard (resultat ficif car determiner aléatoirement dans le script python)
  - de connaitre les stations avec le plus de passages de train par jours
  - de connaitre les lignes les plus rapide en moyenne (temps de trajet / sur distance de la ligne)
  - de connaitre simplement le nombre de station par lignes
  - de connaitre les station avec le plus de corespondance (nombre de metros différent qui ont une desserte dans une mëme station)
  - de connaitre les lignes avec les plus de stations PMR
  - de connaitre les heures de début et de fin de service de chaque ligne
  - de connaitre le temps moyen de trajet entre chaque station dans une ligne


## Slide 11 — Intérêt analytique
Ce projet ne sert pas seulement à stocker des données.
Il permet aussi de les exploiter.
À partir des requêtes, on peut par exemple analyser le nombre de stations par ligne, les trajets enregistrés par ligne, ou encore la répartition des passages.
Cela rejoint l’objectif de la SAE, qui est à la fois de concevoir une base relationnelle et d’analyser les données. 


## Slide 12 — Conclusion
Pour conclure, notre projet répond à une demande fictive cohérente de la RATP, dans le cadre du thème transport public.
Nous avons conçu une base de données relationnelle simple, structurée autour des lignes, des stations, des trajets et des passages.
Ce projet nous a permis de mettre en pratique les notions vues en cours, notamment la modélisation relationnelle, la création de tables, les relations entre tables, l’insertion de données et les requêtes SQL.
