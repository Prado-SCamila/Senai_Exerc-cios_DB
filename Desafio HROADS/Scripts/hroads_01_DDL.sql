CREATE DATABASE SENAI_HROADS_MANHA;

USE SENAI_HROADS_MANHA;

CREATE TABLE Tipo
(
idTipo INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200)NOT NULL,
);

CREATE TABLE Habilidades
(
idHabilidade INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200) NOT NULL,
idTipo INT FOREIGN KEY REFERENCES Tipo (idTipo),
);

CREATE TABLE Classes
(
idClasse INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200) NOT NULL,
idHabilidade INT FOREIGN KEY REFERENCES Habilidades (idHabilidade),----troquei Habilidade INT por chave estrangeira
);

CREATE TABLE Personagens
(
idPersonagem INT PRIMARY KEY IDENTITY,
idClasse INT FOREIGN KEY REFERENCES Classes (idClasse),
Nome VARCHAR(200) NOT NULL,
Capac_max_vida INT NOT NULL,
Capac_max_mana INT NOT NULL,
Data_atualizacao DATE NOT NULL,
Data_criacao DATE NOT NULL,
);