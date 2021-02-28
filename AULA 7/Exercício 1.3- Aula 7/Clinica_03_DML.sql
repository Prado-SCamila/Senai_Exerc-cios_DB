USE Clinica_Vet;

--inserindo descrição da consulta e data da consulta na tabela pets

ALTER TABLE Pets 
ADD Descricao_consulta VARCHAR(500);

ALTER TABLE Pets
ADD Data_consulta DATE;

ALTER TABLE Pets
ADD idVeterinario INT;

ALTER TABLE Dono
ADD idVeterinario INT;

ALTER TABLE Veterinarios
ADD idClinica INT;

ALTER TABLE Veterinarios
ADD Data_consulta DATE;

ALTER TABLE Veterinarios
ADD Descricao_consulta VARCHAR(500);

ALTER TABLE Clinica
ADD Razao_social VARCHAR(300);

UPDATE Clinica
SET Razao_social = 'DogDog LTDA'
WHERE idClinica=2;

ALTER TABLE Veterinarios
ADD CRMV INT;


UPDATE Veterinarios
SET CRMV = 12345678
WHERE idVeterinario = 1;

UPDATE Veterinarios
SET CRMV = 09876543
WHERE idVeterinario = 2;


UPDATE Veterinarios
SET Data_consulta = '08/02/2021'
WHERE idPet = 1;

UPDATE Veterinarios
SET Descricao_consulta = 'Cirurgia bem-sucedida'
WHERE idPet =1;

UPDATE Veterinarios
SET Data_consulta = '15/02/2021'
WHERE idPet =2;

UPDATE Veterinarios
SET Descricao_consulta = 'Aplicação de vacina'
WHERE idPet =2;

SELECT * FROM Veterinarios--atendimento--

UPDATE Veterinarios
SET idClinica = 1
WHERE idVeterinario = 1;

ALTER TABLE Clinica
DROP COLUMN idVeterinario;

UPDATE Veterinarios
SET idClinica = 1
WHERE idVeterinario= 2;

ALTER TABLE Pets
DROP COLUMN Descricao_consulta;

ALTER TABLE Pets
DROP COLUMN Data_consulta;