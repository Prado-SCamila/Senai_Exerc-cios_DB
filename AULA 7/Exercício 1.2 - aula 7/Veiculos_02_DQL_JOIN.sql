USE Veiculos;

INSERT INTO Veiculos (Marca,Cor,Placa)
VALUES ('Ford','Preto','ABC1234');

INSERT INTO Veiculos (Marca,Cor,Placa)
VALUES ('Fiat','Amarelo','ABC1258');

INSERT INTO Cliente (Nome,Telefone,Email)
VALUES ('Pedro','20345678','pedro@hotmail.com');

INSERT INTO Cliente (Nome,Telefone,Email)
VALUES ('Bianca','20345675','bia@hotmail.com');

ALTER TABLE Cliente
ADD Data_Retirada DATE;

ALTER TABLE Cliente
ADD Data_Devolver DATE;

UPDATE Cliente 
SET Data_Retirada ='21/02/2021'
WHERE idCliente = 1;

UPDATE Cliente 
SET Data_Devolver ='06/03/2021'
WHERE idCliente = 1;

UPDATE Cliente
SET Data_Retirada ='21/02/2021'
WHERE idCliente = 2;

UPDATE Cliente
SET Data_Devolver ='28/02/2021'
WHERE idCliente = 2;



SELECT Data_Retirada,Data_Devolver,Nome,Marca AS Modelo FROM Cliente
RIGHT JOIN Veiculos
ON Cliente.idVeiculo = Veiculos.idVeiculo;


SELECT Nome,Data_Retirada,Data_Devolver,Cliente.idVeiculo, Marca AS Modelo FROM Cliente
RIGHT JOIN Veiculos
ON Cliente.idVeiculo = Veiculos.idVeiculo;
