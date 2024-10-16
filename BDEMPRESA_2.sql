CREATE DATABASE BDEmpresa_2;
USE BDEmpresa_2;

CREATE TABLE Projetos (
	Id_Proj INT NOT NULL PRIMARY KEY,
	Data_Inicio_Proj DATE,
	Data_Final_Proj DATE,
	Descricao VARCHAR(255)
)

CREATE TABLE Departamentos (
	Num_Depto INT NOT NULL PRIMARY KEY,
	Nome_Depto VARCHAR(50),
	Localizacao VARCHAR(50)
)

CREATE TABLE Empregados (
	Matricula INT NOT NULL PRIMARY KEY,
	Nome_Emp VARCHAR(50),
	Cargo VARCHAR(30),
	Matricula_Gerente INT,
	Data_Admissao DATE,
	Salario MONEY,
	Comissao MONEY,
	Num_Depto INT,
	FOREIGN KEY (Num_Depto) REFERENCES Departamentos(Num_Depto),
	FOREIGN KEY (Matricula_Gerente) REFERENCES Empregados(Matricula)
)

CREATE TABLE Faixa_Salarial (
	Faixa INT NOT NULL PRIMARY KEY,
	Menor_Sal MONEY,
	Maior_Sal MONEY
)

CREATE TABLE Projs_Emps (
	Id_Proj INT NOT NULL,
	Matricula INT NOT NULL,
	PRIMARY KEY(Id_Proj, Matricula),
	FOREIGN KEY (Id_Proj) REFERENCES Projetos(Id_Proj),
	FOREIGN KEY (Matricula) REFERENCES Empregados(Matricula),
	Data_Inicio DATE,
	Data_Final DATE,
	Horas_Trab INT
)

INSERT INTO Projetos VALUES (01, '03/03/2007', '10/08/2007', 'SCA'),
	(02, '10/02/2007', '12/12/2007', 'SCE'),
	(03, '05/01/2007', '07/07/2007', 'SCM')

INSERT INTO Departamentos VALUES (10, 'Administrativo', 'Volta Redonda'),
	(20, 'Financeiro', 'Volta Redonda'),
	(30, 'Informática', 'São Paulo')

INSERT INTO Empregados VALUES (002, 'Thales Silva', 'Diretor', NULL, '01-12-1995', 5000.00, 1000.00, 10),
	(001, 'Aline Souza', 'Gerente', 002, '02-01-2000', 3000.00, 500.00, 10),
	(003, 'Luiza Alves', 'Secretaria', 001, '02-08-2003', 1500.00, 300.00, 20)

INSERT INTO Faixa_Salarial VALUES (01, 500.00, 2000.00),
	(02, 2001.00, 3500.00),
	(03, 3501.00, 5000.00)

INSERT INTO Projs_Emps VALUES (01, 001, '03-04-2007', '10-07-2007', 300),
	(01, 003, '03-03-2007', '10-08-2007', 400),
	(02, 001, '10-02-2007', '12-12-2007', 200)

/*03*/
SELECT * FROM Empregados;

/*04*/
SELECT * FROM Faixa_Salarial;

/*05*/
SELECT * FROM Empregados WHERE Salario BETWEEN 1000 AND 2000;

/*06*/
SELECT Nome_Depto, Num_Depto FROM Departamentos ORDER BY Nome_Depto;

/*07*/
SELECT DISTINCT Cargo FROM Empregados;

/*08*/
SELECT Nome_Emp FROM Empregados WHERE Num_Depto IN (10, 20) ORDER BY Nome_Emp;

/*09*/
SELECT Nome_Emp, Cargo FROM Empregados WHERE Cargo = 'Diretor' AND Num_Depto = 10;

/*10*/
SELECT Nome_Emp FROM Empregados WHERE Nome_Emp LIKE '%A%' OR Nome_Emp LIKE '%L%';

/*11*/
SELECT Nome_Emp, Cargo, Salario FROM Empregados WHERE Matricula_Gerente IS NOT NULL;

/*12*/
SELECT Nome_Emp, Num_Depto, Data_Admissao FROM Empregados WHERE YEAR(Data_Admissao) = 2003;

/*13*/
SELECT Empregados.Nome_Emp, Empregados.Num_Depto, Departamentos.Nome_Depto FROM Empregados JOIN Departamentos ON Empregados.Num_Depto = Departamentos.Num_Depto;

/*14*/
SELECT Empregados.Nome_Emp, Departamentos.Nome_Depto, Departamentos.Localizacao
FROM Empregados
JOIN Departamentos ON Empregados.Num_Depto = Departamentos.Num_Depto
WHERE Empregados.Salario > 1500;

/*15*/
UPDATE Faixa_Salarial
SET Maior_Sal = 7000.00
WHERE Faixa = 03;

/*16*/
DELETE FROM Faixa_Salarial
WHERE Menor_Sal >= 500.00 AND Maior_Sal <= 2000.00;

/*17*/
DELETE FROM Projs_Emps;
