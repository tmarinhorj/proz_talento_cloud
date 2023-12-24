-- Cria o banco de dados
CREATE DATABASE Escola;
USE Escola;

-- Cria a tabela Curso
CREATE TABLE Curso (
    ID INT PRIMARY KEY,
    nome VARCHAR(255)
);

-- Cria a tabela Aluno
CREATE TABLE Aluno (
    ID INT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
    endereco VARCHAR(255),
    CursoID INT,
    FOREIGN KEY (CursoID) REFERENCES Curso(ID)
);

-- Insere dados na tabela Curso
INSERT INTO Curso (ID, nome)
VALUES (1, 'Matemática'), (2, 'Português');

-- Insere dados na tabela Aluno
INSERT INTO Aluno (ID, nome, email, endereco, CursoID)
VALUES (1, 'João', 'joao@email.com', 'Rua 1, 123', 1), (2, 'Maria', 'maria@email.com', 'Rua 2, 456', 2);

-- Realiza uma consulta usando JOIN
SELECT Aluno.nome AS Aluno, Curso.nome AS Curso
FROM Aluno
JOIN Curso ON Aluno.CursoID = Curso.ID;

