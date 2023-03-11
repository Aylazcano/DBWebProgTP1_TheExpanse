
-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █          Création de la BD          █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
USE master
GO

CREATE DATABASE TheExpanseWikiAYL
GO

USE TheExpanseWikiAYL
GO


-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █          Création d'au moins deux schémas         █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
CREATE SCHEMA Traditions
GO
CREATE SCHEMA Productions
GO


-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █ Création des tables + contraintes de clé primaire █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
CREATE TABLE Traditions.Personnage(
	PersoID int IDENTITY(1,1) NOT NULL,
	Nom varchar(50) NOT NULL,
	Prenom varchar(50) NOT NULL,
	Age int NULL,
	Sexe char(1) NOT NULL,
	NomActeur varchar(50) NULL,
	DateNaissanceActeur date NULL,
	Occupation varchar(20) NULL,
	Description varchar(max) NULL,
	Citation1 varchar(max) NULL,
	Citation2 varchar(max) NULL,
	Citation3 varchar(max) NULL,
	ImagePerso varchar(max) NULL,
	VaisseauID int NULL,
	FactionID int NULL,
CONSTRAINT PK_Personage_PersoID PRIMARY KEY (PersoID)
)
GO

CREATE TABLE Productions.Episode(
	EpisodeID int IDENTITY(1,1) NOT NULL,
	Titre varchar(50) NOT NULL,
	NoSaison int NOT NULL,
	NoEpisode int NOT NULL,
	DateDiffusion date NOT NULL,
	Note int NULL,
	Auteur1 varchar(50) NULL,
	Auteur2 varchar(50) NULL,
	Auteur3 varchar(50) NULL,
	Realisateur varchar(max) NULL,
	Description varchar(max) NULL,
	ImageEpisode varchar(max) NULL,
CONSTRAINT PK_Episode_EpisodeID PRIMARY KEY (EpisodeID)
)
GO

CREATE TABLE Productions.PersoEpisode(
	PersoEpisodeID int IDENTITY(1,1) NOT NULL,
	EpisodeID int NOT NULL,
	PersoID int NOT NULL,
CONSTRAINT PK_PersoEpisode_PersoEpisodeID PRIMARY KEY (PersoEpisodeID)
)
GO

CREATE TABLE Traditions.Faction(
	FactionID int IDENTITY(1,1) NOT NULL,
	Nom varchar(50) NOT NULL,
	Capital varchar(50) NULL,
	Population int NULL,
	Description varchar(max) NULL,
	ImageFaction varchar(max) NULL,
CONSTRAINT PK_Faction_FactionID PRIMARY KEY (FactionID)
)
GO

CREATE TABLE Traditions.Territoire(
	TerritoireID int IDENTITY(1,1) NOT NULL,
	Nom varchar(50) NOT NULL,
	Population int NULL,
	Description varchar(max) NULL,
	ImageTerritoire varchar(max) NULL,
	FactionID int NULL,
CONSTRAINT PK_Territoire_TerritoireID PRIMARY KEY (TerritoireID)
)
GO

CREATE TABLE Traditions.Vaisseau(
	VaisseauID int IDENTITY(1,1) NOT NULL,
	Nom varchar(50) NOT NULL,
	Type varchar(30) NULL,
	Description varchar(max) NULL,
	ImageVaisseau varchar(max) NULL,
	FactionID int NULL,
CONSTRAINT PK_Vaisseau_VaisseauID PRIMARY KEY (VaisseauID)
)
GO


-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █ Création des contraintes de clé étrangère █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█
ALTER TABLE Traditions.Personnage 
ADD CONSTRAINT FK_Personnage_VaisseauID FOREIGN KEY(VaisseauID)
REFERENCES Traditions.Vaisseau (VaisseauID)
ON DELETE SET NULL
GO

ALTER TABLE Traditions.Personnage 
ADD CONSTRAINT FK_Personnage_FactionID FOREIGN KEY(FactionID)
REFERENCES Traditions.Faction (FactionID)
ON DELETE SET NULL
GO

ALTER TABLE Traditions.Vaisseau 
ADD CONSTRAINT FK_Vaisseau_FactionID FOREIGN KEY(FactionID)
REFERENCES Traditions.Faction (FactionID)
ON DELETE SET NULL
GO

ALTER TABLE Traditions.Territoire 
ADD CONSTRAINT FK_Territoire_FactionID FOREIGN KEY(FactionID)
REFERENCES Traditions.Faction (FactionID)
ON DELETE SET NULL
GO

ALTER TABLE Productions.PersoEpisode 
ADD CONSTRAINT FK_PersoEpisode_PersoID FOREIGN KEY(PersoID)
REFERENCES Traditions.Personnage (PersoID)
ON DELETE CASCADE
GO

ALTER TABLE Productions.PersoEpisode 
ADD CONSTRAINT FK_PersoEpisode_EpisodeID FOREIGN KEY(EpisodeID)
REFERENCES Productions.Episode (EpisodeID)
ON DELETE CASCADE
GO


-- █▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀█
-- █      Création des contraintes UC,DF,CK     █
-- █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█

ALTER TABLE Traditions.Faction ADD CONSTRAINT UC_Faction_Nom UNIQUE (Nom)
GO

ALTER TABLE Traditions.Territoire ADD CONSTRAINT UC_Territoire_Nom UNIQUE (Nom)
GO

ALTER TABLE Traditions.Vaisseau ADD CONSTRAINT UC_Vaisseau_Nom UNIQUE (Nom)
GO

ALTER TABLE Traditions.Personnage ADD CONSTRAINT CHK_Personnage_Sexe CHECK (Sexe in ('M', 'F', 'A'))
GO

