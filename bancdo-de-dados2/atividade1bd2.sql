CREATE DATABASE EscolaDB;
USE EscolaDB;

CREATE TABLE ALUNO (
    AlunoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Endereco VARCHAR(255)
);

CREATE TABLE PROFESSOR (
    ProfessorID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Especialidade VARCHAR(100)
);

CREATE TABLE CURSO (
    CursoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    ProfessorID INT,
    FOREIGN KEY (ProfessorID) REFERENCES PROFESSOR(ProfessorID)
);

CREATE TABLE MATRICULA (
    MatriculaID INT PRIMARY KEY,
    AlunoID INT,
    CursoID INT,
    DataMatricula DATE,
    FOREIGN KEY (AlunoID) REFERENCES ALUNO(AlunoID),
    FOREIGN KEY (CursoID) REFERENCES CURSO(CursoID)
);

CREATE TABLE MATRICULA (
    MatriculaID INT PRIMARY KEY,
    AlunoID INT,
    CursoID INT,
    DataMatricula DATE,
    FOREIGN KEY (AlunoID) REFERENCES ALUNO(AlunoID),
    FOREIGN KEY (CursoID) REFERENCES CURSO(CursoID)
);

INSERT INTO PROFESSOR (ProfessorID, Nome, Especialidade)
VALUES 
(1, 'Carlos Pereira', 'Matemática'),
(2, 'Ana Lima', 'História');

INSERT INTO CURSO (CursoID, Nome, ProfessorID)
VALUES 
(1, 'Matemática Básica', 1),
(2, 'História do Brasil', 2);


INSERT INTO MATRICULA (MatriculaID, AlunoID, CursoID, DataMatricula)
VALUES 
(1, 1, 1, '2024-01-10'),
(2, 2, 2, '2024-01-11');

SELECT ALUNO.Nome AS AlunoNome, CURSO.Nome AS CursoNome
FROM MATRICULA
INNER JOIN ALUNO ON MATRICULA.AlunoID = ALUNO.AlunoID
INNER JOIN CURSO ON MATRICULA.CursoID = CURSO.CursoID;

SELECT CURSO.Nome AS CursoNome, ALUNO.Nome AS AlunoNome
FROM CURSO
LEFT JOIN MATRICULA ON CURSO.CursoID = MATRICULA.CursoID
LEFT JOIN ALUNO ON MATRICULA.AlunoID = ALUNO.AlunoID;

SELECT ALUNO.Nome AS AlunoNome, CURSO.Nome AS CursoNome
FROM ALUNO
RIGHT JOIN MATRICULA ON ALUNO.AlunoID = MATRICULA.AlunoID
RIGHT JOIN CURSO ON MATRICULA.CursoID = CURSO.CursoID;
