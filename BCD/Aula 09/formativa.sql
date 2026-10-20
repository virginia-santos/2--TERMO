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

-- PARTE B
-- 6
SELECT NOME_PRODUTO, preco  
FROM produto
WHERE preco BETWEEN 8.00 AND 15.00;

-- 7
SELECT nome, cidade
FROM cliente
WHERE cidade IN ('Limeira', 'Americana');

-- 8
SELECT NOME_PRODUTO 
FROM produto 
WHERE NOME_PRODUTO LIKE 'café%';

-- 9
SELECT nome, telefone
FROM cliente
WHERE telefone IS NOT NULL;