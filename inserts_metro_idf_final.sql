-- ------------------------------------------------------------
--  TABLE ligne
-- ------------------------------------------------------------
TRUNCATE TABLE dessert;
TRUNCATE TABLE ligne;

INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (1, '1', 'Ligne 1', '#FFBE00');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (2, '10', 'Ligne 10', '#C9910D');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (3, '11', 'Ligne 11', '#704B1C');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (4, '12', 'Ligne 12', '#007852');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (5, '13', 'Ligne 13', '#6EC4E8');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (6, '14', 'Ligne 14', '#9F9825');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (7, '2', 'Ligne 2', '#003CA6');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (8, '3', 'Ligne 3', '#837902');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (9, '3bis', 'Ligne 3bis', '#6EC4E8');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (10, '4', 'Ligne 4', '#CF009E');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (11, '5', 'Ligne 5', '#FF7E2E');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (12, '6', 'Ligne 6', '#6ECA97');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (13, '7', 'Ligne 7', '#FA9ABA');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (14, '7b', 'Ligne 7b', '#6ECA97');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (15, '8', 'Ligne 8', '#E19BDF');
INSERT INTO ligne (ligne_id, numero_ligne, nom_ligne, couleur_hex) 
    VALUES (16, '9', 'Ligne 9', '#B6BD00');

-- ------------------------------------------------------------
--  TABLE station
-- ------------------------------------------------------------
TRUNCATE TABLE passage;
TRUNCATE TABLE station;

INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (63284, 'Aéroport d''Orly', 'Aéroport d''Orly', 48.728083, 2.362591, FALSE, 94390);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (69677, 'Thiais - Orly', 'Thiais - Orly​ (Pont de Rungis​)', 48.746979, 2.37284, FALSE, 94320);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (69884, 'Créteil - Pointe du Lac', 'Pointe du Lac', 48.768811, 2.46428, FALSE, 94000);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (69974, 'L''Haÿ - les - Roses', 'L''Haÿ-les-Roses', 48.775314, 2.354365, FALSE, 94240);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70021, 'Créteil–Préfecture', 'Créteil Préfecture', 48.780003, 2.459363, FALSE, 94000);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70143, 'Villejuif - Louis Aragon', 'Villejuif Louis Aragon', 48.787563, 2.367804, FALSE, 94800);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70172, 'Créteil-Université', 'Créteil Université', 48.78992, 2.450512, FALSE, 94000);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70248, 'Villejuif Paul Vaillant-Couturier', 'Paul Vaillant Couturier', 48.796483, 2.36827, FALSE, 94800);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70269, 'Créteil–L’Échat', 'Créteil L''Échat', 48.796682, 2.449413, FALSE, 94000);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70358, 'Maisons-Alfort-Les Juilliottes', 'Maisons-Alfort Les Juilliottes', 48.803355, 2.445574, FALSE, 94700);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70375, 'Villejuif - Léo Lagrange', 'Villejuif Léo Lagrange', 48.804688, 2.363953, FALSE, 94800);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70426, 'Maisons-Alfort-Stade', 'Maisons-Alfort - Stade', 48.809144, 2.43451, FALSE, 94700);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70441, 'Barbara', 'Barbara', 48.809704, 2.317449, FALSE, 92240);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70445, 'Hôpital Bicêtre', 'Hôpital Bicêtre', 48.80981, 2.34975, FALSE, 94270);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70452, 'Le Kremlin-Bicêtre', 'Le Kremlin - Bicêtre', 48.81013, 2.362263, FALSE, 94270);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70488, 'Mairie d''Ivry', 'Mairie d''Ivry', 48.810521, 2.38429, FALSE, 94200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70522, 'École Vétérinaire de Maisons-Alfort', 'École Vétérinaire de Maisons-Alfort', 48.814803, 2.422376, FALSE, 94700);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70537, 'Pierre et Marie Curie', 'Pierre et Marie Curie', 48.815931, 2.377267, FALSE, 94200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70562, 'Malakoff - Rue Étienne Dolet', 'Malakoff Rue Étienne Dolet', 48.815308, 2.297078, FALSE, 92240);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70586, 'Mairie de Montrouge', 'Mairie de Montrouge', 48.818676, 2.31974, FALSE, 92120);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70596, 'Porte d''Italie', 'Paris', 48.819223, 2.359705, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70604, 'Porte de Choisy', 'Paris', 48.819876, 2.364532, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70636, 'Porte d''Ivry', 'Porte d''Ivry', 48.821356, 2.369291, FALSE, 94200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70645, 'Maison Blanche', 'Paris', 48.822183, 2.358551, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70648, 'Charenton-Écoles', 'Charenton Écoles', 48.821898, 2.413133, FALSE, 94220);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70657, 'Porte d''Orléans', 'Paris', 48.823412, 2.325576, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70671, 'Mairie d''Issy', 'Mairie d''Issy', 48.824309, 2.273666, FALSE, 92130);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70698, 'Pont de Sèvres', 'Pont de Sèvres', 48.829746, 2.231028, FALSE, 92310);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70721, 'Boulogne - Pont de Saint-Cloud', 'Boulogne Pont de Saint-Cloud - Albert Kahn', 48.840745, 2.228537, FALSE, 92100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (70990, 'Corentin Celton', 'Corentin Celton', 48.827085, 2.279412, FALSE, 92130);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71001, 'Tolbiac', 'Paris', 48.826426, 2.357246, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71006, 'Porte de Vanves', 'Porte de Vanves', 48.827796, 2.305535, FALSE, 92170);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71013, 'Corvisart', 'Paris', 48.829791, 2.350415, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71026, 'Glacière', 'Paris', 48.83113, 2.343512, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71030, 'Alésia', 'Paris', 48.828188, 2.327165, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71033, 'Place d''Italie', 'Paris', 48.830973, 2.35558, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71034, 'Billancourt', 'Billancourt', 48.831738, 2.237437, FALSE, 92100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71039, 'Plaisance', 'Paris', 48.831826, 2.314122, FALSE, 75014);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71041, 'Saint-Jacques', 'Paris', 48.832901, 2.337135, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71043, 'Nationale', 'Paris', 48.833217, 2.362856, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71045, 'Porte de Versailles', 'Paris', 48.832449, 2.288022, FALSE, 75015);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71054, 'Marcel Sembat', 'Marcel Sembat', 48.833629, 2.243579, FALSE, 92100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71056, 'Denfert-Rochereau', 'Paris', 48.834293, 2.332852, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71063, 'Campo Formio', 'Paris', 48.835153, 2.358566, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71073, 'Balard', 'Paris', 48.836295, 2.27833, FALSE, 75015);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71075, 'Convention', 'Paris', 48.837099, 2.296231, FALSE, 75015);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71076, 'Les Gobelins', 'Paris', 48.83593, 2.352542, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71084, 'Porte de Saint-Cloud', 'Paris', 48.837961, 2.257122, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71086, 'Lourmel', 'Paris', 48.838735, 2.282143, FALSE, 75015);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71088, 'Raspail', 'Paris', 48.838964, 2.330754, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71091, 'Vaugirard', 'Paris', 48.839517, 2.301108, FALSE, 75015);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71092, 'Saint-Marcel', 'Paris', 48.838427, 2.360967, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71100, 'Censier-Daubenton', 'Paris', 48.840234, 2.351606, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71108, 'Edgar Quinet', 'Paris', 48.840663, 2.326385, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71113, 'Volontaires', 'Paris', 48.841506, 2.307949, FALSE, 75014);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71117, 'Vavin', 'Paris', 48.842218, 2.329009, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71124, 'Exelmans', 'Paris', 48.842413, 2.259608, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71125, 'Pasteur', 'Paris', 48.842677, 2.312813, FALSE, 75014);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71132, 'Commerce', 'Paris', 48.844795, 2.293952, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71133, 'Place Monge', 'Paris', 48.842867, 2.352225, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71135, 'Gare d''Austerlitz', 'Paris', 48.842437, 2.365185, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71137, 'Félix Faure', 'Paris', 48.842747, 2.291912, FALSE, 75015);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71138, 'Notre-Dame-des-Champs', 'Paris', 48.844943, 2.328778, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71139, 'Montparnasse Bienvenüe', 'Paris', 48.843735, 2.324353, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71141, 'Chardon Lagache', 'Paris', 48.845205, 2.266442, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71144, 'Sèvres-Lecourbe', 'Paris', 48.845627, 2.309531, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71147, 'Boulogne - Jean Jaurès', 'Boulogne Jean Jaurès', 48.842005, 2.238887, FALSE, 92100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71148, 'Jussieu', 'Paris', 48.846151, 2.354918, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71150, 'Javel - André Citroën', 'Paris', 48.846157, 2.2784, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71153, 'Cardinal Lemoine', 'Paris', 48.846657, 2.351623, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71156, 'Charles Michels', 'Paris', 48.846535, 2.285999, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71157, 'Ségur', 'Paris', 48.847066, 2.307402, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71158, 'Avenue Émile Zola', 'Paris', 48.846997, 2.295019, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71159, 'Duroc', 'Paris', 48.846989, 2.317005, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71162, 'Mirabeau', 'Paris', 48.847131, 2.272764, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71166, 'Église d''Auteuil', 'Paris', 48.84715, 2.269136, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71167, 'Cambronne', 'Paris', 48.847507, 2.302968, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71169, 'Porte d''Auteuil', 'Paris', 48.847972, 2.257745, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71170, 'Vaneau', 'Paris', 48.848816, 2.321258, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71184, 'Saint-Placide', 'Paris', 48.846878, 2.326793, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71190, 'Maubert-Mutualité', 'Paris', 48.85009, 2.348209, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71197, 'Dupleix', 'Paris', 48.850435, 2.293612, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71199, 'La Motte Picquet-Grenelle', 'Paris', 48.848742, 2.298931, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71201, 'Sully-Morland', 'Paris', 48.851621, 2.361525, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71202, 'Saint-Sulpice', 'Paris', 48.851071, 2.330701, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71203, 'Sèvres-Babylone', 'Paris', 48.851032, 2.326102, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71204, 'Saint-François-Xavier', 'Paris', 48.851442, 2.314408, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71206, 'Michel Ange-Auteuil', 'Paris', 48.847896, 2.264082, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71216, 'Saint-Germain-des-Prés', 'Paris', 48.853719, 2.333776, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71217, 'Pont Marie', 'Paris', 48.853575, 2.357163, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71222, 'Saint-Paul', 'Paris', 48.855236, 2.360956, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71223, 'Cité', 'Paris', 48.854936, 2.347321, FALSE, 75004);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71224, 'École Militaire', 'Paris', 48.854891, 2.306403, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71227, 'Rue du Bac', 'Paris', 48.855196, 2.325816, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71232, 'Varenne', 'Paris', 48.856871, 2.315057, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71237, 'Passy', 'Paris', 48.857449, 2.285812, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71242, 'La Tour Maubourg', 'Paris', 48.857725, 2.310566, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71243, 'Ranelagh', 'Paris', 48.855485, 2.270109, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71253, 'Pont Neuf', 'Paris', 48.858554, 2.342233, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71264, 'Châtelet', 'Paris', 48.856943, 2.348147, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71270, 'Solférino', 'Paris', 48.858499, 2.323168, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71273, 'Rambuteau', 'Paris', 48.861205, 2.353496, FALSE, 75004);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71274, 'Invalides', 'Paris', 48.860381, 2.314891, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71277, 'Filles du Calvaire', 'Paris', 48.863258, 2.366661, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71284, 'Tuileries', 'Paris', 48.864344, 2.33013, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71285, 'Trocadéro', 'Paris', 48.863065, 2.286243, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71290, 'Alma-Marceau', 'Paris', 48.864767, 2.300991, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71292, 'Rue de la Pompe', 'Paris', 48.86394, 2.278442, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71293, 'Arts et Métiers', 'Paris', 48.865586, 2.356737, FALSE, 75003);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71294, 'Iéna', 'Paris', 48.864794, 2.294162, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71296, 'Temple', 'Paris', 48.866514, 2.360804, FALSE, 75003);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71297, 'Palais Royal - Musée du Louvre', 'Paris', 48.86283, 2.336878, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71298, 'Concorde', 'Paris', 48.866286, 2.322943, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71301, 'Boissière', 'Paris', 48.866983, 2.290059, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71305, 'Champs-Élysées – Clemenceau', 'Paris', 48.867602, 2.313894, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71311, 'République', 'Paris', 48.867601, 2.362757, FALSE, 75003);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71313, 'Quatre Septembre', 'Paris', 48.869638, 2.336233, FALSE, 75002);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71315, 'Victor Hugo', 'Paris', 48.869799, 2.285335, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71318, 'Franklin D. Roosevelt', 'Paris', 48.8687, 2.309505, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71320, 'Bonne Nouvelle', 'Paris', 48.87059, 2.348491, FALSE, 75010);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71322, 'Jacques Bonsergent', 'Paris', 48.870396, 2.3614, FALSE, 75010);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71324, 'Madeleine', 'Paris', 48.870667, 2.325753, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71326, 'Grands Boulevards', 'Paris', 48.871257, 2.344561, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71328, 'George V', 'Paris', 48.872024, 2.30056, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71330, 'Richelieu-Drouot', 'Paris', 48.871693, 2.338463, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71333, 'Château d''Eau', 'Paris', 48.872621, 2.356154, FALSE, 75010);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71334, 'Saint-Philippe du Roule', 'Paris', 48.872046, 2.310019, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71337, 'Opéra', 'Paris', 48.869939, 2.332592, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71346, 'Miromesnil', 'Paris', 48.873733, 2.314744, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71347, 'Charles De Gaulle-Étoile', 'Paris', 48.874749, 2.29556, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71348, 'Argentine', 'Paris', 48.875337, 2.290128, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71350, 'Notre-Dame-de-Lorette', 'Paris', 48.876047, 2.337496, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71351, 'Cadet', 'Paris', 48.876009, 2.344572, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71355, 'Trinité d''Estienne d''Orves', 'Paris', 48.87633, 2.333109, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71359, 'Gare de l''Est', 'Paris', 48.876273, 2.358058, FALSE, 75010);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71363, 'Poissonnière', 'Paris', 48.8771, 2.348776, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71366, 'Saint-Georges', 'Paris', 48.878173, 2.337858, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71367, 'Ternes', 'Paris', 48.877973, 2.29831, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71370, 'Saint-Lazare', 'Paris', 48.875719, 2.324225, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71376, 'Courcelles', 'Paris', 48.87933, 2.30407, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71379, 'Porte Maillot', 'Paris', 48.877551, 2.283162, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71382, 'Liège', 'Paris', 48.879635, 2.327022, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71403, 'Villiers', 'Paris', 48.881094, 2.314721, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71407, 'Louis Blanc', 'Paris', 48.881192, 2.364379, FALSE, 75010);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71408, 'Rome', 'Paris', 48.882333, 2.321802, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71409, 'Pigalle', 'Paris', 48.882225, 2.338233, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71410, 'Gare du Nord', 'Paris', 48.879794, 2.355792, FALSE, 75010);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71416, 'Malesherbes', 'Paris', 48.882892, 2.309052, FALSE, 75017);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71419, 'Anvers', 'Paris', 48.882973, 2.344667, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71420, 'Blanche', 'Paris', 48.883556, 2.33338, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71423, 'Wagram', 'Paris', 48.883809, 2.304674, FALSE, 75017);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71426, 'Barbès-Rochechouart', 'Paris', 48.883804, 2.350613, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71432, 'Abbesses', 'Paris', 48.884594, 2.33795, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71434, 'La Chapelle', 'Paris', 48.8844, 2.3604, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71435, 'Place de Clichy', 'Paris', 48.884, 2.32853, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71442, 'Pont de Neuilly', 'Pont de Neuilly', 48.884708, 2.260515, FALSE, 92200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71450, 'Porte de Champerret', 'Paris', 48.886006, 2.29353, FALSE, 75017);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71453, 'Pereire-Levallois', 'Pereire', 48.884896, 2.297724, FALSE, 92300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71469, 'Château Rouge', 'Paris', 48.886711, 2.349559, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71474, 'La Fourche', 'Paris', 48.887184, 2.32578, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71475, 'Pont Cardinet', 'Paris', 48.889561, 2.315177, FALSE, 75017);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71485, 'Esplanade de la Défense', 'Esplanade de La Défense', 48.888138, 2.249793, FALSE, 92800);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71492, 'Lamarck-Caulaincourt', 'Paris', 48.889674, 2.338761, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71510, 'Marx Dormoy', 'Paris', 48.890485, 2.359996, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71511, 'Marcadet-Poissonniers', 'Paris', 48.891465, 2.349815, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71517, 'La Défense', 'La Défense (Grande Arche)', 48.892187, 2.237018, FALSE, 92800);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71519, 'Anatole France', 'Anatole France', 48.892083, 2.28501, FALSE, 92300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71521, 'Jules Joffrin', 'Paris', 48.892419, 2.344765, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71528, 'Guy Môquet', 'Paris', 48.892207, 2.32722, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71545, 'Porte de Clichy', 'Porte de Clichy', 48.894252, 2.313772, FALSE, 92110);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71556, 'Simplon', 'Paris', 48.894344, 2.347431, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71557, 'Olympiades', 'Paris', 48.827271, 2.368033, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71558, 'Liberté', 'Liberté', 48.82662, 2.405852, FALSE, 94220);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71572, 'Bibliothèque François Mitterrand', 'Paris', 48.82999, 2.375748, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71576, 'Cour Saint-Émilion', 'Paris', 48.833339, 2.386632, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71579, 'Porte de Charenton', 'Paris', 48.832737, 2.40031, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71591, 'Porte Dorée', 'Paris', 48.834785, 2.405383, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71595, 'Michel Bizot', 'Paris', 48.837117, 2.402333, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71597, 'Quai de la Gare', 'Paris', 48.837045, 2.372826, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71606, 'Dugommier', 'Paris', 48.839041, 2.38962, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71607, 'Bercy', 'Paris', 48.840001, 2.379554, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71614, 'Daumesnil', 'Paris', 48.83955, 2.395703, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71631, 'Montgallet', 'Paris', 48.844066, 2.390482, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71634, 'Château de Vincennes', 'Château de Vincennes', 48.844456, 2.44044, FALSE, 94300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71637, 'Quai de la Rapée', 'Paris', 48.846485, 2.36591, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71639, 'Picpus', 'Paris', 48.845062, 2.401289, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71647, 'Saint-Mandé', 'Saint-Mandé', 48.846423, 2.41876, FALSE, 94160);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71650, 'Bérault', 'Bérault', 48.845471, 2.429205, FALSE, 94300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71654, 'Reuilly-Diderot', 'Paris', 48.847129, 2.387025, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71663, 'Porte de Vincennes', 'Paris', 48.847336, 2.408089, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71673, 'Nation', 'Paris', 48.848945, 2.395879, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71693, 'Ledru Rollin', 'Paris', 48.851524, 2.375101, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71694, 'Rue des Boulets', 'Paris', 48.852168, 2.389626, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71697, 'Avron', 'Paris', 48.851905, 2.397997, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71703, 'Maraîchers', 'Paris', 48.852725, 2.406089, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71710, 'Porte de Montreuil', 'Paris', 48.853773, 2.411895, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71725, 'Robespierre', 'Robespierre', 48.855726, 2.422983, FALSE, 93100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71728, 'Alexandre Dumas', 'Paris', 48.856228, 2.394676, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71750, 'Voltaire', 'Paris', 48.857878, 2.380021, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71751, 'Philippe Auguste', 'Paris', 48.858062, 2.390861, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71756, 'Croix de Chavaux', 'Croix de Chavaux', 48.857784, 2.434538, FALSE, 93100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71777, 'Saint-Sébastien-Froissart', 'Paris', 48.861169, 2.367211, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71781, 'Saint-Ambroise', 'Paris', 48.861476, 2.373944, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71785, 'Mairie de Montreuil', 'Mairie de Montreuil', 48.862299, 2.441522, FALSE, 93100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71787, 'Père Lachaise', 'Paris', 48.862184, 2.387836, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71795, 'Rue Saint-Maur', 'Paris', 48.864286, 2.379742, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71799, 'Porte de Bagnolet', 'Paris', 48.8646, 2.408031, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71801, 'Parmentier', 'Paris', 48.865254, 2.374582, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71803, 'Oberkampf', 'Paris', 48.864964, 2.367901, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71808, 'Gambetta', 'Paris', 48.864978, 2.396913, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71815, 'Ménilmontant', 'Paris', 48.866447, 2.383599, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71817, 'Gallieni', 'Gallieni', 48.865335, 2.416697, FALSE, 93100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71828, 'Pelleport', 'Paris', 48.86844, 2.401562, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71834, 'Couronnes', 'Paris', 48.869091, 2.380543, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71840, 'Goncourt', 'Paris', 48.869958, 2.371095, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71853, 'Belleville', 'Paris', 48.871849, 2.376594, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71860, 'Saint-Fargeau', 'Paris', 48.872101, 2.404515, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71864, 'Pyrénées', 'Paris', 48.873882, 2.385316, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71868, 'Jourdain', 'Paris', 48.875112, 2.389415, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71870, 'Télégraphe', 'Paris', 48.875474, 2.398868, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71885, 'Place des Fêtes', 'Paris', 48.876806, 2.393056, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71889, 'Porte des Lilas', 'Paris', 48.877175, 2.40648, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71893, 'Colonel Fabien', 'Paris', 48.87761, 2.370811, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71897, 'Montreuil - Hôpital', 'Montreuil - Hôpital', 48.878337, 2.454714, FALSE, 93100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71900, 'Buttes-Chaumont', 'Paris', 48.878514, 2.381615, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71906, 'Botzaris', 'Paris', 48.879493, 2.388567, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71909, 'Mairie des Lilas', 'Mairie des Lilas', 48.879761, 2.41648, FALSE, 93260);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71911, 'Pré Saint-Gervais', 'Paris', 48.880272, 2.398468, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71920, 'Bolivar', 'Paris', 48.880667, 2.374496, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71930, 'Danube', 'Paris', 48.881816, 2.394012, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71940, 'Jaurès', 'Paris', 48.882465, 2.370158, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71947, 'Romainville - Carnot', 'Romainville - Carnot', 48.883136, 2.440822, FALSE, 93230);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71957, 'Laumière', 'Paris', 48.884971, 2.378717, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71961, 'Stalingrad', 'Paris', 48.884284, 2.365822, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71972, 'Ourcq', 'Paris', 48.886857, 2.385913, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71977, 'Riquet', 'Paris', 48.887968, 2.373457, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (71989, 'Porte de Pantin', 'Porte de Pantin', 48.888417, 2.391784, FALSE, 93500);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72004, 'Hoche', 'Hoche', 48.891229, 2.402352, FALSE, 93500);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72013, 'Crimée', 'Paris', 48.890906, 2.37709, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72024, 'Église de Pantin', 'Église de Pantin', 48.89315, 2.412763, FALSE, 93500);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72031, 'Corentin Cariou', 'Paris', 48.894656, 2.38216, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72039, 'Bobigny-Pantin - Raymond Queneau', 'Bobigny-Pantin - Raymond Queneau', 48.895455, 2.425327, FALSE, 93500);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72057, 'Pont de Levallois', 'Pont de Levallois - Bécon', 48.897154, 2.280414, FALSE, 92300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72064, 'Porte de la Chapelle', 'Paris', 48.897245, 2.359508, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72078, 'Porte de Saint-Ouen', 'Porte de Saint-Ouen', 48.897375, 2.328943, FALSE, 93400);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72118, 'Mairie de Clichy', 'Mairie de Clichy', 48.903234, 2.306011, FALSE, 92110);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72126, 'Saint-Ouen', 'Saint-Ouen', 48.904496, 2.321744, FALSE, 93400);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72128, 'Garibaldi', 'Garibaldi', 48.906094, 2.331831, FALSE, 93400);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72168, 'Mairie de Saint-Ouen', 'Mairie de Saint-Ouen', 48.913202, 2.334663, FALSE, 93400);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72203, 'Gabriel Péri', 'Gabriel Péri', 48.916382, 2.294685, FALSE, 92110);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72217, 'Carrefour Pleyel', 'Carrefour Pleyel', 48.919008, 2.342608, FALSE, 93400);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72240, 'Les Agnettes', 'Les Agnettes', 48.923104, 2.28628, FALSE, 92110);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72285, 'Saint-Denis - Porte de Paris', 'Saint-Denis Porte de Paris', 48.929936, 2.356036, FALSE, 93200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72286, 'Les Courtilles', 'Asnières - Gennevilliers Les Courtilles', 48.930757, 2.284174, FALSE, 92600);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72326, 'Basilique de Saint-Denis', 'Basilique de Saint-Denis', 48.936777, 2.359366, FALSE, 93200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72358, 'Saint-Denis - Université', 'Saint-Denis - Université', 48.945867, 2.364636, FALSE, 93200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72430, 'Porte de la Villette', 'Paris', 48.89739, 2.385508, FALSE, 75019);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72460, 'Aubervilliers Pantin - Quatre Chemins', 'Aubervilliers Pantin Quatre Chemins', 48.903784, 2.392221, FALSE, 93300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72486, 'Bobigny Pablo Picasso', 'Bobigny Pablo Picasso', 48.906375, 2.44919, FALSE, 93000);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72491, 'Aimé Césaire', 'Aimé Césaire', 48.908082, 2.377741, FALSE, 93400);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (72524, 'Mairie d''Aubervilliers', 'Mairie d''Aubervilliers', 48.913711, 2.380736, FALSE, 93300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73617, 'Europe', 'Paris', 48.87877, 2.322265, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73618, 'Odéon', 'Paris', 48.852301, 2.339728, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73619, 'Cluny-La Sorbonne', 'Paris', 48.85105, 2.344273, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73620, 'Saint-Michel', 'Paris', 48.853168, 2.343286, FALSE, 75005);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73621, 'Bréguet-Sabin', 'Paris', 48.856141, 2.370209, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73622, 'Chemin Vert', 'Paris', 48.857103, 2.368184, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73626, 'Gare de Lyon', 'Paris', 48.843487, 2.373923, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73630, 'Louvre-Rivoli', 'Paris', 48.860806, 2.341109, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73633, 'Strasbourg-Saint-Denis', 'Paris', 48.869629, 2.354469, FALSE, 75003);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73634, 'Sentier', 'Paris', 48.867513, 2.346552, FALSE, 75002);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73635, 'Bourse', 'Paris', 48.868654, 2.341376, FALSE, 75002);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73636, 'Réaumur Sébastopol', 'Paris', 48.866496, 2.351359, FALSE, 75003);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73639, 'Mabillon', 'Paris', 48.853017, 2.335502, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73640, 'Rennes', 'Paris', 48.848458, 2.327782, FALSE, 75006);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73641, 'Falguière', 'Paris', 48.84447, 2.317853, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73642, 'Assemblée Nationale', 'Paris', 48.860787, 2.320998, FALSE, 75007);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73647, 'Charonne', 'Paris', 48.855094, 2.3847, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73648, 'Richard Lenoir', 'Paris', 48.859874, 2.371914, FALSE, 75011);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73650, 'Bel-Air', 'Paris', 48.841338, 2.400919, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73651, 'Chevaleret', 'Paris', 48.834948, 2.368126, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73653, 'Mouton-Duvernet', 'Paris', 48.831113, 2.329705, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73656, 'Kléber', 'Paris', 48.871262, 2.293241, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73657, 'Jasmin', 'Paris', 48.852504, 2.268177, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73658, 'Michel Ange-Molitor', 'Paris', 48.845058, 2.261745, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73661, 'Brochant', 'Paris', 48.890587, 2.320175, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73667, 'Louise Michel', 'Louise Michel', 48.888706, 2.288084, FALSE, 92300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73671, 'Monceau', 'Paris', 48.880325, 2.308774, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73675, 'Gaîté', 'Paris', 48.838632, 2.322492, FALSE, 75013);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73689, 'Chaussée d''Antin - La Fayette', 'Paris', 48.872804, 2.334456, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73690, 'Saint-Augustin', 'Paris', 48.874476, 2.322002, FALSE, 75008);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73695, 'Fort d''Aubervilliers', 'Fort d''Aubervilliers', 48.91495, 2.404409, FALSE, 93300);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73696, 'La Courneuve 8 Mai 1945', 'La Courneuve - 8 Mai 1945', 48.920786, 2.410599, FALSE, 93120);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73753, 'Chevilly - Larue', 'Chevilly-Larue​ (Marché International​)', 48.75955, 2.366485, FALSE, 94550);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73766, 'Malakoff - Plateau de Vanves', 'Malakoff - Plateau De Vanves', 48.822584, 2.298464, FALSE, 92240);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73788, 'Pyramides', 'Paris', 48.865907, 2.33419, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (73794, 'Les Halles', 'Paris', 48.862515, 2.345786, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (74001, 'Faidherbe Chaligny', 'Paris', 48.850178, 2.384092, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (74041, 'Front Populaire', 'Front Populaire', 48.906567, 2.36592, FALSE, 93200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (412687, 'Pernety', 'Paris', 48.834226, 2.318616, FALSE, 75014);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (412992, 'Boucicaut', 'Paris', 48.841094, 2.287946, FALSE, 75015);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (415852, 'Hôtel de Ville', 'Paris', 48.857478, 2.351578, FALSE, 75004);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (425779, 'Les Sablons', 'Les Sablons', 48.881016, 2.272239, FALSE, 92200);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (426280, 'Rosny-Bois-Perrier', 'Rosny-Bois-Perrier', 48.882752, 2.480511, FALSE, 93110);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (461505, 'Châtillon-Montrouge', 'Châtillon-Montrouge', 48.810746, 2.301679, FALSE, 92320);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (463564, 'Bastille', 'Paris', 48.852009, 2.368675, FALSE, 75012);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (473829, 'Bir-Hakeim', 'Paris', 48.853943, 2.289335, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (474149, 'Château-Landon', 'Paris', 48.878444, 2.361965, FALSE, 75010);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (474150, 'La Muette', 'Paris', 48.858046, 2.274155, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (474152, 'Porte Dauphine', 'Paris', 48.871467, 2.277083, FALSE, 75016);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (478860, 'Villejuif - Gustave Roussy', 'Villejuif - Gustave Roussy', 48.793055, 2.349365, FALSE, 94800);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (478883, 'Porte de Clignancourt', 'Paris', 48.897402, 2.344848, FALSE, 75018);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (478885, 'Le Peletier', 'Paris', 48.874972, 2.340576, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (479068, 'Étienne Marcel', 'Paris', 48.863972, 2.349618, FALSE, 75001);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (479928, 'Buzenval', 'Paris', 48.851975, 2.401927, FALSE, 75020);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (482368, 'Havre-Caumartin', 'Paris', 48.873713, 2.327695, FALSE, 75009);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (483315, 'Bagneux - Lucie Aubrac', 'Bagneux - Lucie Aubrac', 48.80363, 2.318054, FALSE, 92220);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (490779, 'Serge Gainsbourg', 'Serge Gainsbourg', 48.881316, 2.427186, FALSE, 93100);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (490782, 'La Dhuys', 'La Dhuys', 48.877993, 2.465472, FALSE, 93310);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (490783, 'Coteaux Beauclair', 'Coteaux Beauclair', 48.882244, 2.467356, FALSE, 93310);
INSERT INTO station (station_id, nom_station, ville, latitude, longitude, accessibilite_pmr, code_postal) 
    VALUES (490784, 'Saint-Denis – Pleyel', 'Saint-Denis – Pleyel', 48.917469, 2.346545, FALSE, 93200);

-- ------------------------------------------------------------
--  TABLE dessert
-- ------------------------------------------------------------

INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71222);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71264);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71284);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71297);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71298);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71305);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71318);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71328);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71347);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71348);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71379);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71442);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71485);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71517);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71634);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71647);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71650);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71654);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71663);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 71673);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 73626);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 73630);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 415852);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 425779);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (1, 463564);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 70721);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71135);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71141);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71147);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71148);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71150);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71153);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71156);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71157);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71158);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71159);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71162);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71166);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71169);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71170);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71190);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71199);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71203);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 71206);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 73618);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 73619);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 73639);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (2, 73658);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71264);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71273);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71293);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71311);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71840);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71853);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71864);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71868);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71870);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71885);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71889);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71897);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71909);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 71947);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 415852);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 426280);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 490779);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 490782);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (3, 490783);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 70671);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 70990);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71045);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71075);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71091);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71113);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71125);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71138);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71139);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71203);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71227);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71270);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71298);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71324);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71350);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71355);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71366);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71370);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71409);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71432);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71492);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71510);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71511);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 71521);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 72064);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 72491);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 72524);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 73640);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 73641);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 73642);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (4, 74041);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 70562);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71006);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71039);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71139);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71159);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71204);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71232);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71274);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71305);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71346);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71370);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71382);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71435);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71474);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71528);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 71545);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72078);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72118);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72128);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72168);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72203);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72217);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72240);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72285);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72286);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72326);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 72358);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 73661);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 73675);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 73766);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 412687);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (5, 461505);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 63284);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 69677);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 69974);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 70445);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 70645);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71264);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71324);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71370);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71475);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71545);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71557);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71572);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71576);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 71607);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 72126);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 72168);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 73626);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 73753);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 73788);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 478860);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (6, 490784);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71315);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71347);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71367);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71376);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71403);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71408);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71409);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71419);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71420);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71426);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71434);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71435);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71673);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71697);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71728);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71751);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71787);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71815);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71834);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71853);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71893);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71940);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 71961);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 73671);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (7, 474152);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71293);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71296);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71311);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71313);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71337);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71370);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71403);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71416);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71423);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71450);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71453);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71519);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71787);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71795);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71799);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71801);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71808);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 71817);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 72057);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 73617);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 73634);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 73635);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 73636);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 73667);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (8, 482368);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (9, 71808);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (9, 71828);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (9, 71860);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (9, 71889);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 70441);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 70586);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 70657);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71030);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71056);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71088);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71117);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71139);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71184);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71202);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71216);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71223);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71264);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71333);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71359);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71410);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71426);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71469);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71511);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 71556);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 73618);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 73620);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 73633);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 73636);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 73653);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 73794);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 478883);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 479068);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (10, 483315);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71033);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71063);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71092);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71135);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71311);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71322);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71359);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71410);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71637);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71803);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71940);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71957);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71961);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71972);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 71989);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 72004);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 72024);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 72039);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 72486);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 73621);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 73648);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (11, 463564);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71013);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71026);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71033);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71041);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71043);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71056);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71088);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71108);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71125);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71139);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71144);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71167);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71197);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71199);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71237);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71285);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71301);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71347);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71597);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71606);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71607);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71614);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71639);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 71673);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 73650);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 73651);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 73656);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (12, 473829);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70143);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70248);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70375);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70452);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70488);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70537);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70596);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70604);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70636);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 70645);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71001);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71033);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71076);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71100);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71133);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71148);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71201);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71217);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71253);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71264);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71297);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71337);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71351);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71359);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71363);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71407);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71961);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 71977);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 72013);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 72031);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 72430);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 72460);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 73689);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 73695);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 73696);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 73788);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 474149);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (13, 478885);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71407);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71885);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71900);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71906);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71911);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71920);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71930);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (14, 71940);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 69884);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 70021);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 70172);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 70269);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 70358);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 70426);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 70522);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 70648);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71073);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71086);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71132);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71137);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71199);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71224);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71242);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71274);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71277);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71298);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71311);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71320);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71324);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71326);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71330);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71337);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71558);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71579);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71591);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71595);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71614);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71631);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71654);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71693);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 71777);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 73622);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 73633);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 74001);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 412992);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (15, 463564);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 70698);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71034);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71054);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71084);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71124);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71206);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71243);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71285);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71290);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71292);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71294);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71311);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71318);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71320);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71326);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71330);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71334);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71346);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71673);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71694);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71703);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71710);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71725);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71750);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71756);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71781);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71785);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 71803);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 73633);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 73647);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 73657);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 73658);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 73689);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 73690);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 474150);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 479928);
INSERT INTO dessert (ligne_id, station_id) 
    VALUES (16, 482368);
