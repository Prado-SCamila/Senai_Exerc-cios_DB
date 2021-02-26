CREATE DATABASE Albuns;

USE Albuns;

CREATE TABLE Estilo
(
idEstilo INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200) NOT NULL,
);

CREATE TABLE Artista
(
idArtista INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200) NOT NULL,
);
CREATE TABLE Album
(
idAlbum INT PRIMARY KEY IDENTITY,
idArtista INT FOREIGN KEY REFERENCES Artista (idArtista),
idEstilo INT FOREIGN KEY REFERENCES Estilo (idEstilo),
Titulo VARCHAR(200) NOT NULL,
Data_lancamento DATE NOT NULL,
Localizacao VARCHAR(250) NOT NULL,
Quantid_minutos INT NOT NULL,
Disponibilidade BIT NOT NULL,
);

CREATE TABLE Usuario
(
idUsuario INT PRIMARY KEY IDENTITY,
Nome VARCHAR(200) NOT NULL,
Email VARCHAR(250) NOT NULL,
Senha VARCHAR(200) NOT NULL,
Tipo_permissao VARCHAR(200),
);

CREATE TABLE Plataforma
(
idPlataforma INT PRIMARY KEY IDENTITY,
idusuario INT FOREIGN KEY REFERENCES Usuario (idUsuario),
idAlbum INT FOREIGN KEY REFERENCES Album (idAlbum),
);