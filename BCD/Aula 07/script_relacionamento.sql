-- Active: 1788268007235@@127.0.0.1@3306@castello_relacionamentos
CREATE DATABASE castello_relacionamentos;

CREATE TABLE PRODUTOS (
    ID_PRODUTO int auto_increment primary key,
    NOME_PRODUTO varchar(200) NOT NULL
);




CREATE TABLE ESTOQUE (
    ID_ESTOQUE int auto_increment primary key,
    ID_PRODUTO int not null Unique,
    QUANTIDADE int not null,
    FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTOS(ID_PRODUTO)
);
    

CREATE TABLE PEDIDOS (
    ID_PRODUTO int auto_increment  primary key,
    DATA_PEDIDO datetime not null,
    ID_CLIENTE int not null,
    FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTES (ID_CLIENTE)
);

CREATE TABLE CLIENTES (
    ID_CLIENTE int auto_increment primary key,
    NOME_CLIENTE varchar(200) not null
);

CREATE TABLE FORNECEDOR_PRODUTO (
    ID_FORNECEDOR int not null,
    ID_PRODUTO  int not null,
    PRIMARY KEY (ID_FORNECEDOR, ID_PRODUTOS),
    FOREIGN KEY (ID_FORNECEDOR) REFERENCES FORNECEDORES (ID_FORNECEDOR),
    FOREIGN KEY (ID_PRODUTO) REFERENCES PRODUTOS (ID_PRODUTOS)
);

SELECT * FROM PRODUTOS;

INSERT INT PRODUTOS (NOME_PRODUTO) VALUES ('Camiseta')

--- Desafio cardinalidades ---

--- Q1 ---
CATEGORIA ----PERTENCE---- ----PRODUTO
          ---- 1,n-----    ---- 1,1

--- Q2 ---
CATEGORIA ----FUNCIONÁRIO---- -----PEDIDOS
          ---- 1,n----        ---- 1,1

--- Q3 ---
CATEGORIA  ----FORNECEDOR---- ----PEDIDOS
           ---- 1,n----       ---- 1,n

--- Q4 ---
CATEGORIA  ----MESA---- ----PRODUTOS
           ---- 0,n----       ---- 1,1

--- Q5 ---
CATEGORIA  ----PEDIDOS---- ----ITEM
           ---- 1,n----       ---- 1,1




