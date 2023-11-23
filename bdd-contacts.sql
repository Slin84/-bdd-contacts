create database if not exists essai;
show databases;
use essai;
drop table if exists contacts;
create table if not exists contacts(ID int, Nom varchar(70),
Prenom varchar(70),
Date_de_naissance date,
Sexe ENUM('Homme','Femme','Autre'),
Adresse text,
Cp varchar(10)
Ville varchar(70)
Pays_Iso3 varchar(3));
show tables;
Describe contacts;