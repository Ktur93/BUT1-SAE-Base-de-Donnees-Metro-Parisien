-- nb station PMR par dep
SELECT s.codePostal count(s.station_id) 
From station s
Where s.accessibilite_pmr
Group By s.code_postal;

-- temps de trajet moyen par ligne
Select l.ligne_id, avg(TIMEDIFF(t.heure_depart, t.heure_arrivee)) 
From ligne l 
Inner Join trajet t on t.ligne_id=l.ligne_id
Group By l.ligne_id;

-- station avec les plus de passage par jours 
Select s.sation_id, count(p.passage_id) 
From station s
Inner Join passage p On p.sation_id=s.station_id
Group By s.sation_id;

-- Nombre de station par ligne
Select d.ligne_id, count(d.ligne_id, d.station_id)
From dessert
Group By l.ligne_id;

-- top 10 station avec le plus de correspondance
Select s.station_id, s.nom_station count(d.ligne_id) AS nbCorrespondance
From station s 
Inner Join dessert d On s.station=d.station_id
Group By station_id
Limit 10;



