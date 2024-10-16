use BDCliente
INSERT INTO Clientes (cod,nome,rua,num,bairro,cidade,estado,salario,idade) VALUES (1,'Taciana','Rua 1','16','Centro','Volta Redonda','RJ',1000.00,12)

INSERT INTO Clientes (cod,nome,rua,num,bairro,cidade,estado,salario,idade) VALUES (2,'Talita','Rua 33','63','Centro','Volta Redonda','RJ',320.00,13)

INSERT INTO Clientes (cod,nome,rua,num,bairro,cidade,estado,salario,idade) VALUES (3,'Tales','Rua 60','231','Centro','Belo Horizonte','MG',8500.00,19)

INSERT INTO Clientes (cod,nome,rua,num,bairro,cidade,estado,salario,idade) VALUES (4,'Tatiana','Rua 7','590','Centro','Belo Horizonte','MG',2500.00,22)

INSERT INTO Clientes (cod,nome,rua,num,bairro,cidade,estado,salario,idade) VALUES (5,'Talita','Rua 2','231','Centro','Barra Mansa','MG',3500.00,43)


UPDATE Clientes SET idade=17 WHERE nome='Taciana'

UPDATE Clientes SET nome='Juliana', cidade='Volta Redonda', estado='RJ' WHERE cod=3

DELETE FROM Clientes WHERE nome='Juliana'


SELECT * FROM Clientes