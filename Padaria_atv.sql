USE DB_T05072C_MURILLO_FREITAS;
-- fornecedor
CREATE TABLE Padaria_fornecedor(
      id_fornecedor INT PRIMARY KEY AUTO_INCREMENT,
      nome_fornecedor VARCHAR (50) NOT NULL,
      telefone VARCHAR (20) NOT NULL
);
-- produto
CREATE TABLE Padaria_produto(
      id_produto INT PRIMARY KEY AUTO_INCREMENT,
      nome_produto VARCHAR (200) NOT NULL,
      preco DEC(5,2) NOT NULL,
      estoque DEC(7,3),
      id_fornecedor INT,
      FOREIGN KEY (id_fornecedor) REFERENCES Padaria_fornecedor(id_fornecedor)
);

CREATE TABLE Padaria_venda(
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT NOT NULL,
    quantidade DEC(7,3) NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES Padaria_produto (id_produto)
);

TRUNCATE TABLE Padaria_fornecedor;

INSERT INTO Padaria_fornecedor (nome_fornecedor, telefone)
VALUES ('Distribuidora trigo', '(11) 98376-3223'),
       ('Fazenda lacto', '(11) 95433-3452'),
       ('Sadali', '(11) 96532-3564'),
       ('Mucakes', '(11) 99876-8765'),
       ('Laticínios Bom Gosto', '(11) 97123-4567'),
       ('Moinho de Ouro Farinhas', '(11) 98234-5678'),
       ('Doces & Cia Confeitaria', '(11) 99345-6789'),
       ('Embalagens Jundiaí', '(11) 94456-7890'),
       ('Café do Sítio Distribuidora', '(11) 93567-8901'),
       ('Frios & Cia Embutidos', '(11) 92678-9012'),
       ('Distribuidora de Bebidas Água na Boca', '(11) 91789-0123');

SELECT * FROM Padaria_fornecedor;

INSERT INTO Padaria_produto (nome_produto, preco, estoque, id_fornecedor)
VALUES ('Bolo de chocolate', 5.99, 15, 4),
       ('Leite', 5.26, 20, 2),
       ('Presunto fatiado 200g', 3.99, 40, 3),
       ('Pao frances', 0.80, 30, 1),
       ('Café coado 300ml', 4.50, 50.000, 9),
       ('Pão de queijo (unidade)', 3.50, 100.000, 2),
       ('Coxinha de frango', 7.00, 25.000, 3),
       ('Mussarela fatiada 200g', 6.50, 35.000, 8),
       ('Farinhada especial 1kg', 8.90, 40.000, 6),
       ('Bolo de cenoura com cobertura', 6.50, 12.000, 5),
       ('Refrigerante lata 350ml', 5.00, 60.000, 11),
       ('Bolo de fubá', 5.50, 15.000, 5);

SELECT * FROM Padaria_produto;

INSERT INTO Padaria_venda (id_produto, quantidade, data_venda)
VALUES 
       -- vendas do dia 2026-08-20
       (2, 3, '2026-08-20'),
       (1, 4, '2026-08-20'),
       (3, 2, '2026-08-20'),
       (4, 5, '2026-08-20'),

        -- Vendas do dia 2026-08-21
        (5, 2.000, '2026-08-21'),
        (6, 4.000, '2026-08-21'),
        (7, 3.000, '2026-08-21'),
        (1, 1.000, '2026-08-21'),
        (8, 5.000, '2026-08-21'),
        (9, 2.000, '2026-08-21'),
    
        -- Vendas do dia 2026-08-22
        (10, 6.000, '2026-08-22'),
        (11, 4.000, '2026-08-22'),
        (2, 2.000, '2026-08-22'),
        (3, 3.000, '2026-08-22'),
        (4, 15.000, '2026-08-22'),
        (5, 1.000, '2026-08-22'),
    
        -- Vendas do dia 2026-08-23
        (1, 5.000, '2026-08-23'),
        (6, 2.000, '2026-08-23'),
        (7, 8.000, '2026-08-23'),
        (8, 3.000, '2026-08-23'),
        (9, 4.000, '2026-08-23'),
        (10, 1.000, '2026-08-23'),
        (11, 7.000, '2026-08-23'),
        (2, 6.000, '2026-08-23'),

        -- Vendas do dia 2026-08-24
        (12, 5.000, '2026-08-24'),
        (12, 2.000, '2026-08-24'),
        (1,  4.000, '2026-08-24'),
        (5,  3.000, '2026-08-24');

SELECT * FROM Padaria_venda;

-- Praticando consultas
USE DB_T05072C_MURILLO_FREITAS;

-- listando todos os produtos cadastrados
SELECT 
    id_produto, nome_produto 
FROM 
    Padaria_produto;

-- listando o total de unidades vendidas por produto
SELECT 
    p.id_produto, p.nome_produto,
    SUM(v.quantidade) AS total_unidades_vendidas
FROM 
    Padaria_produto p
JOIN 
    Padaria_venda v ON p.id_produto = v.id_produto
GROUP BY 
    p.id_produto, p.nome_produto
ORDER BY 
    total_unidades_vendidas DESC;

-- listando o total de vendas de bolo de fuba
SELECT 
    p.nome_produto,
    SUM(v.quantidade) AS total_unidades_vendidas
FROM 
    Padaria_produto p
JOIN 
    Padaria_venda v ON p.id_produto = v.id_produto
WHERE 
    p.nome_produto = 'Bolo de fubá'
GROUP BY 
    p.id_produto, 
    p.nome_produto;
 
-- listando o total de vendas de bolo de chocolate
SELECT 
    p.nome_produto,
    SUM(v.quantidade) AS total_unidades_vendidas
FROM 
    Padaria_produto p
JOIN 
    Padaria_venda v ON p.id_produto = v.id_produto
WHERE 
    p.nome_produto = 'Bolo de chocolate'
GROUP BY 
    p.id_produto, 
    p.nome_produto;

-- Produtos vendidos em 2026-08-23
SELECT 
    data_venda, quantidade
FROM 
    Padaria_venda
WHERE 
    data_venda = '2026-08-24';