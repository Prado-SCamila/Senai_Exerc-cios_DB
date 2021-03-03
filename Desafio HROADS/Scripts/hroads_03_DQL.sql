USE SENAI_HROADS_MANHA;

       --6 Selecionar todos os personagens
	   SELECT Personagens.Nome FROM Personagens;

	   --7 Selecionar todas as classes
	   SELECT * FROM Classes;

	   --8 Selecionar somente o nome das classes
	   SELECT Classes.Nome FROM Classes;

	   --9 Selecionar todas as habilidades
	   SELECT Habilidades.Nome FROM Habilidades;

	   --10 Realizar a contagem de quantas habilidades estão cadastradas
	   SELECT COUNT(DISTINCT Nome) FROM Habilidades;

	   --11 Selecionar somente od id's das habilidades em ordem crescente
	   SELECT idHabilidade  FROM Habilidades 
	   ORDER BY idHabilidade ASC;

	   --12 Selecionar todos os tipos de habilidades
	   SELECT Tipo.Nome FROM Tipo;

	   --13 Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte;
	   SELECT Habilidades.Nome AS Habilidade,Tipo.Nome AS Tipo FROM Tipo
	   RIGHT JOIN Habilidades
	   ON Tipo.idTipo = Habilidades.idTipo;

	   --14 Selecionar personagens e suas respectivas classes
	   SELECT Nome,idClasse FROM  Personagens;

	   
	    --15 Personagens e todas as classes mesmo q nao tenha correspondencia
	    SELECT Personagens.Nome AS Personagens, Classes.Nome AS Classes FROM  Classes
		LEFT JOIN Personagens
		ON Classes.idClasse = Personagens.idClasse;

		--16 Selecionar todas as classes e suas respectivas habilidades
		SELECT Classes.Nome AS Classes,Habilidades.Nome AS Habilidades  FROM  Classes
		LEFT JOIN Habilidades
		ON Classes.idHabilidade = Habilidades.idHabilidade;
	
	   --17 Selecionar todas habilidades e suas classes- somente as que tem correspondencia
	    SELECT Habilidades.Nome AS Habilidades, Classes.Nome  FROM  Classes
		INNER JOIN Habilidades
		ON Classes.idHabilidade = Habilidades.idHabilidade;

	   --18 Selecionar todas habilidades e suas classes- mesmo que não tenha correspondencia
	    SELECT Habilidades.Nome AS Habilidades, Classes.Nome  FROM  Classes
		LEFT OUTER JOIN Habilidades
		ON Classes.idHabilidade = Habilidades.idHabilidade;
