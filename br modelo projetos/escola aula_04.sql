-- COMANDOS PARA CRIAR BANCO DE DADOS
CREATE database ESCOLA_Virginia;

CREATE database ESCOLA_Virginia2;

-- COMANDO PARA APAGAR BANCO DE DADOS
DROP database ESCOLA_Virginia2;

-- COMANDOS PARA ATIVAR BANCO DE DADOS
USE ESCOLA_Virginia;

-- MOSTRA TABELAS NO BANCO DE DADOS
SHOW tables;

-- COMANDO PARA CRIAR TABELAS
CREATE table ALUNOS (
Id_Aluno int auto_increment primary key,
Nome Varchar(60),
Data_de_nascimento Datetime not null,
CPF Datetime not null,
Endereco Varchar(70),
Cond_medicas Varchar(255)
);

CREATE table FUNCIONARIOS (
Id_Funcionario int auto_increment  primary key,
Data_de_nascimento Datetime not null,
CPF Varchar(14) not null,
Cargo Varchar(80),
Antecedente_Criminal Varchar(80)not null
);

CREATE table ACADEMICO (
Nome_Aluno Varchar(80)not null,
Serie Varchar(3),
Historico_Escolar Varchar(255),
Boletim Varchar(255),
Grade_Escolar Varchar(250)
);

-- COMANDO PARA ALTERAR INFORMAÇÕES
-- ADICIONAR OUTRO ATRIBIUTO
ALTER table ALUNOS add Nome Varchar(60);

-- ALTERAR O TIPO DE DADOS E TAMANHO DO ATRIBUTO
ALTER table ALUNOS modify Nome Varchar(60);

-- RENOMEAR O NOME DO ATRIBUTO
-- ALTER TABLE ALUNOS CHANGE Nome(60)

-- RENOMEAR TABELAS
ALTER TABLE Alunos rename to Aluno;

-- EXCLUIR ATRIBUTO
ALTER TABLE Alunos drop column Endereco;

-- LIMPAR DADOS DA TABELA
TRUNCATE TABLE Alunos;







