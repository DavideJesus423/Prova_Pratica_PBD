-- Criando o Banco de Dados
CREATE DATABASE GestaoAcademica;
USE GestaoAcademica;

-- Tabela Professor
CREATE TABLE Professor (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE
);

-- Tabela Turma
CREATE TABLE Turma (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    codigo_turma VARCHAR(20) NOT NULL,
    periodo_letivo VARCHAR(10) NOT NULL
);

-- Tabela Aluno
CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    matricula VARCHAR(20) UNIQUE NOT NULL,
    data_nascimento DATE
);

-- Tabela Disciplina (Relacionamento 1:N com Professor e Turma)
CREATE TABLE Disciplina (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome_disciplina VARCHAR(100) NOT NULL,
    carga_horaria INT,
    id_professor INT,
    id_turma INT,
    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor),
    FOREIGN KEY (id_turma) REFERENCES Turma(id_turma)
);

-- Tabela Matricula (Relacionamento N:N entre Aluno e Disciplina)
CREATE TABLE Matricula (
    id_aluno INT,
    id_disciplina INT,
    nota DECIMAL(5,2),
    desempenho VARCHAR(50),
    PRIMARY KEY (id_aluno, id_disciplina),
    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno),
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina)
);