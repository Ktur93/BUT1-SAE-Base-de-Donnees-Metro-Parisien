CREATE TABLE ligne (
    ligne_id        INT             NOT NULL AUTO_INCREMENT,
    numero_ligne    VARCHAR(5)      NOT NULL,          
    nom_ligne       VARCHAR(100)    NOT NULL,
    couleur_hex     CHAR(7)         NOT NULL, 
    CONSTRAINT pk_ligne PRIMARY KEY (ligne_id),
    CONSTRAINT uq_ligne_numero UNIQUE (numero_ligne)
);

CREATE TABLE station (
    station_id          INT             NOT NULL AUTO_INCREMENT,
    nom_station         VARCHAR(100)    NOT NULL,
    ville               VARCHAR(100)    NOT NULL,
    latitude            DECIMAL(9,6)    NOT NULL,
    longitude           DECIMAL(9,6)    NOT NULL,
    accessibilite_pmr   BOOLEAN         NOT NULL DEFAULT FALSE,
    code_postal         SMALLINT        NOT NULL,           
    CONSTRAINT pk_station PRIMARY KEY (station_id)
);

CREATE TABLE trajet (
    trajet_id       INT         NOT NULL AUTO_INCREMENT,
    ligne_id        INT         NOT NULL,
    heure_depart    TIME        NOT NULL,
    heure_arrivee   TIME        NOT NULL CHECK (heure_depart < heure_arrivee),
    id_station_depart INT         NOT NULL,
    id_station_arrivee INT         NOT NULL,
    CONSTRAINT pk_trajet PRIMARY KEY (trajet_id),
    CONSTRAINT fk_trajet_station_depart FOREIGN KEY (id_station_depart)
        REFERENCES station (station_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT fk_trajet_station_arrivee FOREIGN KEY (id_station_arrivee)
        REFERENCES station (station_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT fk_trajet_ligne FOREIGN KEY (ligne_id)
        REFERENCES ligne (ligne_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


CREATE TABLE passage (
    passage_id      INT         NOT NULL AUTO_INCREMENT,
    trajet_id       INT         NOT NULL,
    station_id      INT         NOT NULL,
    ordre_station   SMALLINT    NOT NULL,   
    heure_passage   TIME        NOT NULL,
    CONSTRAINT pk_passage PRIMARY KEY (passage_id),
    CONSTRAINT fk_passage_trajet FOREIGN KEY (trajet_id)
        REFERENCES trajet (trajet_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_passage_station FOREIGN KEY (station_id)
        REFERENCES station (station_id)
        ON DELETE RESTRICT
        ON UPDATE CASCADE,
    CONSTRAINT uq_passage UNIQUE (trajet_id, ordre_station),
    CONSTRAINT uq_passage_station UNIQUE (trajet_id, station_id)
);

CREATE TABLE dessert (
    ligne_id        INT     NOT NULL,
    station_id      INT     NOT NULL,
    CONSTRAINT pk_dessert PRIMARY KEY (ligne_id, station_id),
    CONSTRAINT fk_dessert_ligne FOREIGN KEY (ligne_id)
        REFERENCES ligne (ligne_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_dessert_station FOREIGN KEY (station_id)
        REFERENCES station (station_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


