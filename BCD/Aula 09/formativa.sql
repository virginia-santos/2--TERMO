-- Active: 1788268007235@@127.0.0.1@3306@smartcoffee_dml_virginia

-- 1
SELECT * FROM cliente;

-- 2
SELECT nome, cidade, email FROM cliente;

-- 3
SELECT DISTINCT cidade 
FROM cliente;

-- 4
SELECT NOME_PRODUTO, preco 
FROM produto
ORDER BY preco ASC;

-- 5
SELECT NOME_PRODUTO, preco 
FROM produto
ORDER BY preco 
lIMIT 5;