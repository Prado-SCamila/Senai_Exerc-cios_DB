USE Clinica_Vet;

--Listagem 1
SELECT Nome,CRMV,Razao_social FROM Veterinarios
LEFT JOIN Clinica
ON Veterinarios.idClinica = Clinica.idClinica;

--Listagem 4
SELECT Dono.Nome AS Nome_dono,Pets.Nome AS Nome_pet FROM Dono
RIGHT JOIN Pets
ON Dono.idDono = Pets.IdDono;





