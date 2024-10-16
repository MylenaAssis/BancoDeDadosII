create database BDESCOLA
use BDESCOLA

create Table Livros (
ISBN INT NOT NULL PRIMARY KEY,
TITULO VARCHAR(50))

CREATE TABLE Alunos
(Matricula_Aluno INT NOT NULL PRIMARY KEY,
Nome_Aluno VARCHAR(50))

CREATE TABLE Cursos
(Codigo_Curso INT NOT NULL PRIMARY KEY,
Descricao_Curso VARCHAR(500))

CREATE TABLE Disciplinas
(Codigo_Disciplina INT NOT NULL PRIMARY KEY,
Descricao_Disciplina VARCHAR(500))

 CREATE TABLE Professores
(Matricula_Professor INT NOT NULL PRIMARY KEY,
 Nome_Professor VARCHAR(30),
 Codigo_Disciplina INT ,
 FOREIGN KEY (Codigo_Disciplina) REFERENCES Disciplinas) 

 CREATE TABLE Emprestimos 
( Matricula_Aluno INT NOT NULL,
ISBN INT NOT NULL,
PRIMARY KEY(Matricula_Aluno, ISBN),
FOREIGN KEY(Matricula_Aluno) REFERENCES Alunos,
FOREIGN KEY(ISBN) REFERENCES Livros)

 CREATE TABLE Alunos_Cursos 
( Matricula_Aluno INT NOT NULL,
Codigo_Curso INT NOT NULL,
PRIMARY KEY(Matricula_Aluno, Codigo_Curso),
FOREIGN KEY(Matricula_Aluno) REFERENCES Alunos,
FOREIGN KEY(Codigo_Curso) REFERENCES Cursos)

CREATE TABLE Cursos_Disciplinas
(Codigo_Curso INT NOT NULL,
Codigo_Disciplina INT NOT NULL,
PRIMARY KEY(Codigo_Curso, Codigo_Disciplina),
FOREIGN KEY(Codigo_Disciplina) REFERENCES Alunos,
FOREIGN KEY(Codigo_Curso) REFERENCES Cursos)
