CREATE database OFICINA_Virginia;

CREATE database OFICINA_Virginia2;

DROP database OFICINA_Virginia2;

USE OFICINA_Virginia;

SHOW tables;

CREATE table CLIENTES (
  Id_clientes int auto_increment primary key,
  servico Varchar(255),
  nome_cliente Varchar(255),
  problema Varchar(255),
  marca_veiculo Varchar(25),
  Telefone Varchar(14) not null
);

CREATE table MODELOS(
  Id_modelos  int auto_increment primary key,
  ano_de_lancamento  datetime
  Varchar(255),
  problema Varchar(255),
  marca_veiculo Varchar(25),
  Telefone Varchar(14) not null
);


 
