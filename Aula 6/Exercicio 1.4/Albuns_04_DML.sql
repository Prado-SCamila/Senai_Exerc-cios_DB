USE Albuns;

INSERT INTO Artista (Nome)
VALUES ('Bill Halley');

INSERT INTO Artista (Nome)
VALUES ('Beatles');

INSERT INTO Estilo(Nome)
VALUES ('Rockabilly');

INSERT INTO Estilo (Nome)
VALUES ('Rock');

INSERT INTO Album (Titulo,Data_lancamento,Localizacao,Quantid_minutos,Disponibilidade)
VALUES ('Shake Rattle & Roll','01/01/1955','Estados Unidos',60,1);

INSERT INTO Album (Titulo,Data_lancamento,Localizacao,Quantid_minutos,Disponibilidade)
VALUES ('Love me Tender','01/01/1956','Estados Unidos',60,1);


INSERT INTO Usuario (Nome,Email,Senha, Tipo_permissao)
VALUES ('Valeria','val@gmail.com','123456','administrador');

INSERT INTO Usuario (Nome,Email,Senha, Tipo_permissao)
VALUES ('Denise','Deni@gmail.com','denideni','Comum');

INSERT INTO Plataforma (idusuario,idAlbum)
VALUES (1,2);

INSERT INTO Plataforma (idusuario,idAlbum)
VALUES (2,2);


