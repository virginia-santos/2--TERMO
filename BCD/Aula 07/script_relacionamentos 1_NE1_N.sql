-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Fornecedores (
Id_Fornecedores Texto(1) PRIMARY KEY,
Razao_Social Varchar(200)
)

CREATE TABLE Produtos (
Id_Produtos int  PRIMARY KEY,
nome_Produto Varchar(200)
)

CREATE TABLE Item_Produto (
Id_Produtos int Unique,
Id_Fornecedores int Unique,
Qtde text(300),
id_item Int not null,
FOREIGN KEY(Id_Produtos) REFERENCES Produtos (Id_Produtos)/*falha: chave estrangeira*/
)

