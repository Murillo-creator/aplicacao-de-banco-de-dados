CREATE DATABASE DB_T05072C_MURILLO_FREITAS;
USE DB_T05072C_MURILLO_FREITAS;

-- Tabela Cliente
CREATE TABLE Cliente(
    id_cliente int PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    telefone VARCHAR(30) NOT NULL,
    email VARCHAR(100)
);

-- Tabela produto
CREATE TABLE Produto(
    id_produto int PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    tipo_produto VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque int NOT NULL
);

SHOW TABLES;

CREATE TABLE Pedido(
    id_pedido int PRIMARY KEY AUTO_INCREMENT,
    valor_total dec(6,2) NOT NULL,
    quantidade dec(5,2) NOT NULL,
    id_cliente int,
    id_produto int,
    forma_pagamento VARCHAR(15) NOT NULL,
    FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente),
    FOREIGN KEY(id_produto) REFERENCES Produto(id_produto) 
);