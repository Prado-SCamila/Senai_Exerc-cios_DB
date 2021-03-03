USE SENAI_HROADS_MANHA;

SELECT * From Personagens;

INSERT INTO Tipo (Nome)
VALUES ('Ataque'),
       ('Defesa'),
	   ('Cura'),
	   ('Magia');

INSERT INTO Habilidades(Nome)
VALUES ('Lança Mortal'),
       ('Escudo Supremo'),
       ('Recuperar Vida'),
       ('Reverter Entropia');

--inseridos

INSERT INTO Personagens (Nome,Capac_max_vida,Capac_max_mana,Data_atualizacao,Data_criacao)
VALUES ('Deubug','100','80','02/03/2021','18/01/2019'),
       ('BitBug','70','100','02/03/2021','17/03/2016'),
	   ('Fer8','75','60','02/03/2021','18/03/2018'),
	   ('Merlin','500','80','02/03/2021','02/03/2021');

INSERT INTO Classes (Nome)
VALUES ('Bárbaro'),
       ('Bárbaro'),
       ('Cruzado'),
	   ('Caçadora de demons'),
	   ('Monge'),
	   ('Monge'),
	   ('Necromante'),
	   ('Feiticeiro'),
	   ('Feiticeiro'),
	   ('Arcanista');

	   UPDATE Personagens
	   SET Nome = 'Fer7'
	   Where Nome='Fer8';

	   UPDATE Personagens
	   SET idClasse= 1
	   WHERE Nome='Debug';

	   UPDATE Classes
	   SET Nome= 'Necromancer'
	   WHERE Nome='Necromante';

	    UPDATE Habilidades
	   SET idTipo= 4
	   WHERE Nome='Reverter Entropia';


	   SELECT * FROM Classes;
	   UPDATE Classes
	   SET idHabilidade=1
	   Where idClasse=8;

	   UPDATE Classes
	   SET idHabilidade=2
	   Where idClasse=9;

	   UPDATE Classes
	   SET idHabilidade=2
	   Where idClasse=10;

	   UPDATE Classes
	   SET idHabilidade=1
	   Where idClasse=11;

	   UPDATE Classes
	   SET idHabilidade=2
	   Where idClasse=12;

	   
	   UPDATE Classes
	   SET idHabilidade=3
	   Where idClasse=13;

	      UPDATE Classes
	   SET idHabilidade=3
	   Where idClasse=13;

	      UPDATE Classes
	   SET idHabilidade=3
	   Where idClasse=15;

	      UPDATE Classes
	   SET idHabilidade=4
	   Where idClasse=16;
	  	   

	   UPDATE Habilidades
	   SET idTipo = 1
	   WHERE Nome = 'Lança Mortal';

	      UPDATE Habilidades
	   SET idTipo = 2
	   WHERE Nome = 'Escudo Supremo';

	      UPDATE Habilidades
	   SET idTipo = 3
	   WHERE Nome = 'Recuperar Vida';

	      UPDATE Habilidades
	   SET idTipo = 4
	   WHERE Nome = 'Reverter Entropia';

	       UPDATE Personagens
	   SET Personagens.idClasse = 8
	   WHERE Nome = 'DeuBug';

	       UPDATE Personagens
	   SET Personagens.idClasse = 12
	   WHERE Nome = 'BitBug';

	       UPDATE Personagens
	   SET Personagens.idClasse = 17
	   WHERE Nome = 'Fer7';

	       UPDATE Personagens
	   SET Personagens.idClasse = 15
	   WHERE Nome = 'Merlin';


	   