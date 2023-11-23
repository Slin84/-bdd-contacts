create database if not exists BDD;
show databases;
use BDD;
drop table if exists contacts;
create table if not exists contacts(ID int, Nom varchar(70), Prenom varchar(70), Date_de_naissance date, Sexe ENUM('Homme','Femme','Autre'), Adresse text, Cp varchar(10), Ville varchar(70), Pays_Iso_3 varchar(3));
INSERT INTO contacts (ID, Nom, Prenom, Date_de_naissance, Sexe, Adresse, Cp, Ville, Pays_Iso_3)
VALUES
    (1, 'Doe', 'John', '1990-05-15', 'Homme', '123 Main St', '12345', 'City1', 'USA'),
    (2, 'Smith', 'Jane', '1985-08-22', 'Femme', '456 Oak St', '54321', 'City2', 'CAN'),
    (3, 'Johnson', 'Bob', '1978-03-10', 'Homme', '789 Pine St', '67890', 'City3', 'GBR'),
    (4, 'Williams', 'Alice', '1982-11-28', 'Femme', '321 Elm St', '13579', 'City4', 'AUS'),
    (5, 'Brown', 'Mike', '1995-07-03', 'Homme', '654 Birch St', '24680', 'City5', 'FRA'),
    (6, 'Taylor', 'Emily', '1989-01-19', 'Femme', '987 Cedar St', '98765', 'City6', 'GER'),
    (7, 'Anderson', 'David', '1973-09-14', 'Homme', '222 Maple St', '11223', 'City7', 'ITA'),
    (8, 'Martinez', 'Sandra', '1980-04-07', 'Femme', '555 Pineapple St', '33445', 'City8', 'ESP'),
    (9, 'Lee', 'Chris', '1992-06-25', 'Homme', '777 Walnut St', '55667', 'City9', 'JPN'),
    (10, 'Garcia', 'Linda', '1987-12-31', 'Femme', '888 Oakwood St', '99887', 'City10', 'MEX');
drop table if exists telephone;
create table if not exists telephone(ID int, ID_contact int, numero varchar(50), type ENUM('Portable','Fixe'));
INSERT INTO telephone (ID, ID_contact, numero, type)
VALUES
    (1, 1, '555-1234', 'Portable'),
    (2, 2, '555-5678', 'Fixe'),
    (3, 3, '555-9876', 'Portable'),
    (4, 4, '555-4321', 'Fixe'),
    (5, 5, '555-8765', 'Portable'),
    (6, 6, '555-3210', 'Fixe'),
    (7, 7, '555-7654', 'Portable'),
    (8, 8, '555-2345', 'Fixe'),
    (9, 9, '555-6789', 'Portable'),
    (10, 10, '555-3456', 'Fixe');
drop table if exists pays;
CREATE TABLE IF NOT EXISTS `pays` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nationalite` VARCHAR(50) NOT NULL DEFAULT '',
  `iso_2` VARCHAR(2) NOT NULL DEFAULT '',
  `iso_3` VARCHAR(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`));
  INSERT INTO `pays` (`nationalite`, `iso_2`, `iso_3`) VALUES
('Afghanistan', 'af', 'afg'),
('Aland Islands', 'ax', 'ala'),
('Albania', 'al', 'alb'),
('Algeria', 'dz', 'dza'),
('American Samoa', 'as', 'asm'),
('Andorra', 'ad', 'and'),
('Angola', 'ao', 'ago'),
('Anguilla', 'ai', 'aia'),
('Antarctica', 'aq', ''),
('Antigua and Barbuda', 'ag', 'atg');
Show tables;
Describe contacts;
Describe telephone;
Describe pays;