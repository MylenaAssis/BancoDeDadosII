CREATE DATABASE BDProjeto
USE BDProjeto

CREATE TABLE PROJ
(cproj INT NOT NULL PRIMARY KEY , nproj INT)

CREATE TABLE EMP
(matric INT NOT NULL PRIMARY KEY,
nome VARCHAR(50),
sal MONEY)

CREATE TABLE HORASTRAB
(cproj INT NOT NULL,
matric INT NOT NULL,
qtde INT,
FOREIGN KEY (cproj) REFERENCES PROJ,
FOREIGN KEY (matric) REFERENCES EMP,
PRIMARY KEY(cproj,matric))

INSERT INTO PROJ(cproj,nproj) VALUES (12345,98765)
INSERT INTO PROJ(cproj,nproj) VALUES (12344,98766)
INSERT INTO PROJ(cproj,nproj) VALUES (11345,99756)
INSERT INTO PROJ(cproj,nproj) VALUES (11366,99956)
INSERT INTO PROJ(cproj,nproj) VALUES (13335,96666)

INSERT INTO EMP(matric,nome,sal) VALUES (7777,'EmpA',7800)
INSERT INTO EMP(matric,nome,sal) VALUES (6666,'EmpB',7800)
INSERT INTO EMP(matric,nome,sal) VALUES (8888,'EmpC',7800)
INSERT INTO EMP(matric,nome,sal) VALUES (9999,'EmpD',7800)
INSERT INTO EMP(matric,nome,sal) VALUES (0001,'EmpE',7500)

INSERT INTO HORASTRAB(cproj,matric,qtde) VALUES (12345,7777,2)



