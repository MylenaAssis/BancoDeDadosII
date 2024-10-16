CREATE DATABASE BDEMPRESA
USE BDEMPRESA

CREATE TABLE Empresas 
(CNPJ VARCHAR(14) NOT NULL PRIMARY KEY,
NOME_EMPRESA VARCHAR(50))

CREATE TABLE Departamentos
(Codigo_Departamento INT NOT NULL PRIMARY KEY,
Nome_Departamento VARCHAR(50),
CNPJ VARCHAR(14),
FOREIGN KEY (CNPJ) REFERENCES Empresas)

CREATE TABLE Funcionarios
(Matricula INT NOT NULL PRIMARY KEY,
Nome_Funcionario VARCHAR(50),
Codigo_Departamento INT,
FOREIGN KEY (Codigo_Departamento) REFERENCES Departamentos)

CREATE TABLE Clientes
(Codigo_Cliente INT NOT NULL PRIMARY KEY,
Nome_Cliente VARCHAR(50))

CREATE TABLE Materiais
(Codigo_Material INT NOT NULL PRIMARY KEY,
Nome_Material VARCHAR(50))

CREATE TABLE Producoes
(Codigo_Departamento INT NOT NULL,
Codigo_Material INT NOT NULL,
PRIMARY KEY (Codigo_Departamento, Codigo_Material),
FOREIGN KEY (Codigo_Departamento) REFERENCES Departamentos,
FOREIGN KEY (Codigo_Material) REFERENCES Materiais)

CREATE TABLE Compras
(Codigo_Material INT NOT NULL,
Codigo_Cliente INT NOT NULL,
PRIMARY KEY (Codigo_Material, Codigo_Cliente),
FOREIGN KEY (Codigo_Material) REFERENCES Materiais,
FOREIGN KEY (Codigo_Cliente) REFERENCES Clientes)
