--Création de la base de données
CREATE DATABASE cinema;

--Création des tables avec les contraintes : clé primaire et clé étrangeres / NOT NULL et AUTO_INCREMENT
CREATE TABLE cinema (IdCinema INT (50) NOT NULL AUTO_INCREMENT, Nom VARCHAR (50), Adresse VARCHAR (50), PRIMARY KEY (IdCinema));

CREATE TABLE client (IdClient INT (50), Nom VARCHAR (50), Prenom VARCHAR (50), Statut VARCHAR (50), IdCinema INT (50), PRIMARY KEY (IdClient), FOREIGN KEY (IdCinema) REFERENCES cinema(IdCinema));

CREATE TABLE film (IdFilm INT (50), Titre VARCHAR (50), IdCinema INT (50), PRIMARY KEY (IdFilm), FOREIGN KEY (IdCinema) REFERENCES cinema(IdCinema));

CREATE TABLE seance (NumeroSeance INT (50) , Prix FLOAT (50), Horaire TIME, IdFilm INT (50), PRIMARY KEY (NumeroSeance), FOREIGN KEY (IdFilm) REFERENCES film(IdFilm));

CREATE TABLE salle (NumeroSalle INT (50), NbPlace int (50) , NumeroSeance INT (50), PRIMARY KEY (NumeroSalle), FOREIGN KEY (NumeroSeance) REFERENCES seance(NumeroSeance));


--Remplir les tables de la base
INSERT INTO cinema values(1, "Cinema 1", "Rue du cinema 1");
INSERT INTO client values(1, "Jean", "Paul", "etudiant", "1");
INSERT INTO film values(1, "Harry Potter", "1");
INSERT INTO seance values(1, 9.20, "10:30", 1);
INSERT INTO salle values (1, 50, 1);

--Mettre à jour un titre
UPDATE film SET Titre="Les animaux fantastiques" where Titre = "Harry Potter";
