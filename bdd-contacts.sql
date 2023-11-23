create database if not exists BDD;
show databases;
use BDD;
drop table if exists contacts;
create table if not exists contacts(ID int, Nom varchar(70),
Prenom varchar(70),
Date_de_naissance date,
Sexe ENUM('Homme','Femme','Autre'),
Adresse text,
Cp varchar(10),
Ville varchar(70),
Pays_Iso3 varchar(3));
drop table if exists telephone;
create table if not exists telephone(ID int, ID_contact int, numero varchar(50), type ENUM('Portable','Fixe'));
Show tables;
Describe contacts;
Describe telephone;