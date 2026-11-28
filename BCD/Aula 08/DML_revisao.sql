-- Active: 1788268007235@@127.0.0.1@3306@smartcoffee_dml_virginia
--- REVISAO DML AULA08 ---

---- REVISAO INSERTS

INSERT INTO cliente(nome, email, telefone, cidade, ativo) VALUES
('Laura C', 'laura@email.com', '19999999901', 'Limeira', TRUE),
('Laura N', 'lauran@email.com', '19999999902', 'Limeira', TRUE),
('Laura R', 'lauran@email.com', '19999999903', 'Limeira', TRUE),
('Leonardo B', 'leonardob@email.com', '19999999904', 'Limeira', TRUE),
('Leonardo BT', 'leonardobt@email.com', '19999999905', 'Americana', TRUE),
('Lidia M', 'lidia@email.com', '19999999906', 'Belem', TRUE),
('Livia V', 'livia@email.com', NULL, 'Limeira', TRUE),
('Marcos V', 'marcos@email.com', '19999999907', 'Campos Mourão', TRUE),
('Nicolas N', 'nicolasn@email.com', '19999999908', TRUE),
('Nicolas F', 'nicolasf@email.com', '19999999909', 'Campinas', TRUE),
('Pablo H', 'pabloh@email.com', '19999999910', 'Indaiatuba', TRUE),
('Sophie A', 'sophie@email.com', '19999999911', 'Campinas', TRUE),
('Vinicius H', 'vinicius@email.com',NULL, 'Limeira', TRUE),
('Vitoria S', 'vitoria@email.com', '19999999912', 'Campinas', TRUE),
('Virginia S', 'virginia@email.com',NULL, 'Boston', TRUE);


INSERT INTO CATEGORIA (`NOME_CATEGORIA`) VALUES
('Combos especiais'), ('Nutella');

INSERT INTO PEDIDO (data_pedido, STATUS_PEDIDO,valor_total,id_cliente) VALUES
(NOW(), 'ABERTO', 0.00,5);

INSERT INTO PEDIDO (data_pedido, status_pedido,valor_total,id_cliente) VALUES
(NOW(), 'ABERTO', 0.00,5);

SET @pedido = LAST_INSERT_ID();

SELECT @pedido;

INSERT INTO item_pedido (id_pedido, id_produto, quantidade, preco_unitario, observacao) VALUES
(@pedido, 4, 2, 13.00, 'Nutella'); 

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

UPDATE cliente
SET TELEFONE = '1967854322'
WHERE ID_CLIENTE = 7;

--- TOMAR MUITO CUIDADO! NAO ESQUCER

UPDATE cliente
SET ativo = FALSE;

UPDATE pedido
SET valor_total = 1.00;

-----------------------------------------------

-- DICAS DE OURO
-- EXECUTAR O SELECT SEMPRE ANTES DE ATUALIZAR
-- SELECT * FROM TABELA_QUE_DESEJO

----------------------------------------------


-- CONDICIONAIS

UPDATE produto
SET preco =
CASE 
    WHEN preco < 30 THEN preco * 1.50  
    ELSE preco * 1.25 
END
WHERE ativo = TRUE;

UPDATE cliente
SET telefone = NULL
WHERE id_cliente = 4;

-- APAGANDO DADOS DO BD

DELETE FROM cliente
WHERE id_cliente = 2;

-- EXCLUINDO DADOS DE FORMA LOGICA

UPDATE cliente
SET ativo = FALSE
WHERE id_cliente = 1;

-------------------------------------------

-- CADASTRANDO UM PROCEDIMENTO DE COMPRA
-- PASSO 1: ADICIONANDO NOVO CLIENTE
INSERT INTO cliente (nome, email, telefone, cidade, ativo) VALUES
('Bruno M' , 'bruno@email.com', '1999999913', 'Piracicaba', TRUE);

-- PASSO 2: ADICIONADO UM NOVO PEDIDO

INSERT INTO pedido (data_pedido,STATUS_PEDIDO,VALOR_TOTAL,ID_CLIENTE) VALUES
(NOW(), 'ABERTO', 0.00,@cliete);
SET @cliente = LAST_INSERT_ID();

--- PASSO 3: ACIONANDO ITENS AO PEDIDO
INSERT INTO item_pedido (ID_PEDIDO,ID_PRODUTO, QUANTIDADE,PRECO_UNITARIO, OBSERVACAO) 
(@pedido, 4, 2, 13.00, 'Mel'),
(@pedido, 5, 1, 15.50, ''),

--- PASSO 4: ATUALIZANDO O VALOR TOTAL DO PEDIDO
UPDATE pedido
SET valor_total = 22.00,
    STATUS_PEDIDO = 'Preparando'
WHERE id_pedido = @pedido;

--PASSO 5: REGISTRANDO PAGAMENTO

INSERT INTO PAGAMENTO(ID_PEDIDO, ID_FORMA_PAGAMENTO,VALOR,DATA_PAGAMENTO) VALUES

-- CONSULTA DE FORMA COMPLETO
SELECT p.ID_PEDIDO,
c.nome AS cliente,
p.STATUS_PEDIDO,
p.valor_total 
FROM pedido p 
JOIN cliente c ON c.ID_CLIENTE = p.ID_CLIENTE
WHERE p.id_pedido = @pedido;

-- COSULTAS PARA OS DADOS NO BD

SELECT * FROM cliente;
SELECT * FROM cliente
where id_cliente = 23;
