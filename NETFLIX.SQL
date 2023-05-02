DROP DATABASE IF EXISTS netflix;

CREATE DATABASE IF NOT EXISTS netflix;
USE netflix;
# -----------------------------------------------------------------------------
#       TABLE : ADMIN
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ADMIN
 (
   ID_ADMIN INTEGER NOT NULL  ,
   USERNAME VARCHAR(30) NULL  ,
   PASSWORD VARCHAR(128) NULL  
   , PRIMARY KEY (ID_ADMIN) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : FILMS
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS FILMS
 (
   ID_EVENT INTEGER NOT NULL  ,
   NOM_EVENT VARCHAR(30) NULL  ,
   IMAGE_EVENT VARCHAR(128) NULL  ,
   DESCRIPTION_EVENT VARCHAR(128) NULL  ,
   DATE_SORTIE VARCHAR(30) NULL  ,
   DATE_CREATION DATETIME NULL  ,
   DATE_MODIFICATION DATETIME NULL  ,
   NOTE VARCHAR(128) NULL  ,
   TRAILER VARCHAR(128) NULL  ,
   GENRE VARCHAR(128) NULL  
   , PRIMARY KEY (ID_EVENT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : REALISATEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS REALISATEUR
 (
   ID_REALISATEUR INTEGER NOT NULL  ,
   NOM_REALISATEUR VARCHAR(30) NULL  ,
   PRENOM_REALISATEUR VARCHAR(30) NULL  
   , PRIMARY KEY (ID_REALISATEUR) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : CLIENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CLIENT
 (
   ID_CLIENT INTEGER NOT NULL AUTO_INCREMENT  ,
   NOM_CLIENT VARCHAR(128) NULL  ,
   PRENOM_CLIENT VARCHAR(128) NULL  ,
   AGE_CLIENT INTEGER NULL  ,
   MAIL_CLIENT VARCHAR(30) NULL  ,
   PASSWORD_CLIENT VARCHAR(128) NULL  
   , PRIMARY KEY (ID_CLIENT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : HISTORIQUE_CLIENT
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS HISTORIQUE_CLIENT
 (
   DATE_CONSULTATION DATE NOT NULL  
   , PRIMARY KEY (DATE_CONSULTATION) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : ACTEUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS ACTEUR
 (
   ID_ACTEUR INTEGER NOT NULL  ,
   NOM_ACTEUR VARCHAR(128) NULL  ,
   PRENOM_ACTEUR VARCHAR(128) NULL  
   , PRIMARY KEY (ID_ACTEUR) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       TABLE : JOUER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS JOUER
 (
   ID_ACTEUR INTEGER NOT NULL  ,
   ID_EVENT INTEGER NOT NULL  ,
   ROLE VARCHAR(50) NULL  
   , PRIMARY KEY (ID_ACTEUR,ID_EVENT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE JOUER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_JOUER_ACTEUR
     ON JOUER (ID_ACTEUR ASC);

CREATE  INDEX I_FK_JOUER_FILMS
     ON JOUER (ID_EVENT ASC);

# -----------------------------------------------------------------------------
#       TABLE : CONSULTER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS CONSULTER
 (
   DATE_CONSULTATION DATE NOT NULL  ,
   ID_CLIENT INTEGER NOT NULL  ,
   ID_EVENT INTEGER NOT NULL  
   , PRIMARY KEY (DATE_CONSULTATION,ID_CLIENT,ID_EVENT) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE CONSULTER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_CONSULTER_HISTORIQUE_CLIENT
     ON CONSULTER (DATE_CONSULTATION ASC);

CREATE  INDEX I_FK_CONSULTER_CLIENT
     ON CONSULTER (ID_CLIENT ASC);

CREATE  INDEX I_FK_CONSULTER_FILMS
     ON CONSULTER (ID_EVENT ASC);

# -----------------------------------------------------------------------------
#       TABLE : REALISER
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS REALISER
 (
   ID_EVENT INTEGER NOT NULL  ,
   ID_REALISATEUR INTEGER NOT NULL  
   , PRIMARY KEY (ID_EVENT,ID_REALISATEUR) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE REALISER
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_REALISER_FILMS
     ON REALISER (ID_EVENT ASC);

CREATE  INDEX I_FK_REALISER_REALISATEUR
     ON REALISER (ID_REALISATEUR ASC);

# -----------------------------------------------------------------------------
#       TABLE : MISE_A_JOUR
# -----------------------------------------------------------------------------

CREATE TABLE IF NOT EXISTS MISE_A_JOUR
 (
   ID_EVENT INTEGER NOT NULL  ,
   ID_CLIENT INTEGER NOT NULL  ,
   ID_ADMIN INTEGER NOT NULL  
   , PRIMARY KEY (ID_EVENT,ID_CLIENT,ID_ADMIN) 
 ) 
 comment = "";

# -----------------------------------------------------------------------------
#       INDEX DE LA TABLE MISE_A_JOUR
# -----------------------------------------------------------------------------


CREATE  INDEX I_FK_MISE_A_JOUR_FILMS
     ON MISE_A_JOUR (ID_EVENT ASC);

CREATE  INDEX I_FK_MISE_A_JOUR_CLIENT
     ON MISE_A_JOUR (ID_CLIENT ASC);

CREATE  INDEX I_FK_MISE_A_JOUR_ADMIN
     ON MISE_A_JOUR (ID_ADMIN ASC);


# -----------------------------------------------------------------------------
#       CREATION DES REFERENCES DE TABLE
# -----------------------------------------------------------------------------


ALTER TABLE JOUER 
  ADD FOREIGN KEY FK_JOUER_ACTEUR (ID_ACTEUR)
      REFERENCES ACTEUR (ID_ACTEUR) ;


ALTER TABLE JOUER 
  ADD FOREIGN KEY FK_JOUER_FILMS (ID_EVENT)
      REFERENCES FILMS (ID_EVENT) ;


ALTER TABLE CONSULTER 
  ADD FOREIGN KEY FK_CONSULTER_HISTORIQUE_CLIENT (DATE_CONSULTATION)
      REFERENCES HISTORIQUE_CLIENT (DATE_CONSULTATION) ;


ALTER TABLE CONSULTER 
  ADD FOREIGN KEY FK_CONSULTER_CLIENT (ID_CLIENT)
      REFERENCES CLIENT (ID_CLIENT) ;


ALTER TABLE CONSULTER 
  ADD FOREIGN KEY FK_CONSULTER_FILMS (ID_EVENT)
      REFERENCES FILMS (ID_EVENT) ;


ALTER TABLE REALISER 
  ADD FOREIGN KEY FK_REALISER_FILMS (ID_EVENT)
      REFERENCES FILMS (ID_EVENT) ;


ALTER TABLE REALISER 
  ADD FOREIGN KEY FK_REALISER_REALISATEUR (ID_REALISATEUR)
      REFERENCES REALISATEUR (ID_REALISATEUR) ;


ALTER TABLE MISE_A_JOUR 
  ADD FOREIGN KEY FK_MISE_A_JOUR_FILMS (ID_EVENT)
      REFERENCES FILMS (ID_EVENT) ;


ALTER TABLE MISE_A_JOUR 
  ADD FOREIGN KEY FK_MISE_A_JOUR_CLIENT (ID_CLIENT)
      REFERENCES CLIENT (ID_CLIENT) ;


ALTER TABLE MISE_A_JOUR 
  ADD FOREIGN KEY FK_MISE_A_JOUR_ADMIN (ID_ADMIN)
      REFERENCES ADMIN (ID_ADMIN) ;

