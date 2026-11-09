

--Criação do Banco de Dados
CREATE DATABASE RPG_Jogo;
GO

USE RPG_Jogo;
GO

--Tabela USUARIOS
CREATE TABLE USUARIOS (
    UsuarioId INT IDENTITY(1,1) PRIMARY KEY,
    Email VARCHAR(255) NOT NULL,
    Senha VARCHAR(255) NOT NULL
);
GO

--Tabela CLASSES
CREATE TABLE CLASSES (
    ClasseId INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Descricao VARCHAR(MAX)
);
GO

--Tabela HABILIDADES
CREATE TABLE HABILIDADES (
    HabilidadeId INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL
);
GO

--Tabela PERSONAGENS 
CREATE TABLE PERSONAGENS (
    PersonagemId INT IDENTITY(1,1) PRIMARY KEY,
    NomePersonagem VARCHAR(100) NOT NULL,
    UsuarioId INT NOT NULL,
    ClasseId INT NOT NULL,
    CONSTRAINT FK_Personagem_Usuario FOREIGN KEY (UsuarioId) 
        REFERENCES USUARIOS(UsuarioId),
    CONSTRAINT FK_Personagem_Classe FOREIGN KEY (ClasseId) 
        REFERENCES CLASSES(ClasseId)
);
GO

--Tabela CLASSES_HABILIDADES
CREATE TABLE CLASSES_HABILIDADES (
    ClasseId INT NOT NULL,
    HabilidadeId INT NOT NULL,
    PRIMARY KEY (ClasseId, HabilidadeId),
    CONSTRAINT FK_ClasseHabilidade_Classe FOREIGN KEY (ClasseId) 
        REFERENCES CLASSES(ClasseId),
    CONSTRAINT FK_ClasseHabilidade_Habilidade FOREIGN KEY (HabilidadeId) 
        REFERENCES HABILIDADES(HabilidadeId)
);
GO