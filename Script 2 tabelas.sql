USE DB_T05072C_MURILLO_FREITAS;

-- criando tabela contatos
CREATE TABLE Contatos(
    id_contato INT PRIMARY KEY AUTO_INCREMENT,
    nome_contato VARCHAR(100),
    telefone VARCHAR(20)
);

-- inserindo dados na tabela
INSERT INTO Contatos(nome_contato, telefone)
VALUES
    ('Jose', '(11)98765-4321'),
    ('Joao', '(21)92587-6321'),
    ('Antonio', '(11)93654-7854'),
    ('Maria', '(11)96547-8523');


-- excluindo a tabela
DROP TABLE Contatos;

-- atualizando dados 
UPDATE Contatos SET nome_contato = 'Ana' WHERE id_contato = 1;

UPDATE Contatos SET telefone = '(11)23323-9112' WHERE id_contato = 1;

-- filtrando
SELECT * FROM Contatos WHERE nome_contato LIKE '__a';

SELECT * FROM Contatos WHERE nome_contato LIKE '%o%';

-- atualizando
UPDATE Contatos SET telefone = '(41)96547-8523' WHERE id_contato = 4;

-- inserindo dados
INSERT INTO Contatos(nome_contato, telefone)
VALUES
    ('Ronaldo', '(11)9764-33219'),
    ('Clovis', '(21)9965-63817'),
    ('Fernando', '(11)9423-74348'),
    ('Mariana', '(11)9675-56326'),
    ('Gabriel', '(42)9376-26543'),
    ('Simone', '(41)9873-82124');

-- selecionando todos os dados da tabela
SELECT * FROM Contatos;

-- inserindo dados
INSERT INTO Contatos(nome_contato, telefone)
VALUES 
    ('Maria','(41)9483-4323');

-- filtrando
SELECT * FROM Contatos ORDER BY nome_contato DESC;

SELECT * FROM Contatos WHERE telefone LIKE '(11)%';

-- atualizando
UPDATE Contatos SET telefone = '(21)90000-0000' WHERE nome_contato = 'Joao';
