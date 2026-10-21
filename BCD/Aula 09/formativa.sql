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

-- 10
SELECT `VALOR_TOTAL` , `STATUS_PEDIDO` 
FROM pedido
WHERE `STATUS_PEDIDO` LIKE 'FINALIZADO%'
ORDER BY `VALOR_TOTAL` DESC;

-- PARTE C- CÁLCULOS E AGRUPAMENTOS
-- 11
SELECT COUNT(*) AS TOTAL_PRODUTOS
FROM produto;

-- 12
SELECT MIN(preco) AS MENORES_PRECOS,
       MAX(preco) AS MAIORES_PRECOS,
       AVG(preco) AS MÉDIA_PRECOS
FROM produto;

-- 13
SELECT cidade,
       COUNT(*) AS Quantidade_clientes
FROM cliente
GROUP BY cidade;

-- 14
SELECT cidade,
        COUNT(*) AS Quantidade_Clientes
FROM cliente
GROUP BY cidade
HAVING COUNT(*) >= 2;

-- 15
SELECT SUM(valor_total) AS FATURAMENTO
FROM pedido
WHERE status = 'FINALIZADO' AND PRECO > 20
ORDER BY valor_total DESC;