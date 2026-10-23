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

USE DB_T05072C_MURILLO_FREITAS;
-- criando tabela mensagens
CREATE TABLE Mensagens(
    id_mensagem INT PRIMARY KEY AUTO_INCREMENT,
    texto_mensagem TEXT NOT NULL,
    data_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_contato INT,
    FOREIGN KEY (id_contato) REFERENCES Contatos(id_contato)
);

INSERT INTO Mensagens (texto_mensagem, id_contato) VALUES
('Ola! Tudo bem?', 1),
('Falaa ai, deu tudo certo com o trabalho ontem?', 2),
('Tudo bem? Ja comprou os ingredientes?', 3),
('Lembra daquela jaqueta que te falei? Esta em promocao', 4),
('Onde que fica aquela padaria que voce foi?', 5);

SELECT * FROM Mensagens;

-- exibe as mensagens existentes
SELECT Contatos.nome_contato, Mensagens.texto_mensagem, Mensagens.data_envio
FROM Mensagens
JOIN Contatos ON Mensagens.id_contato = Contatos.id_contato;

-- exibe apenas a mensagem do contato selecionado
SELECT Contatos.nome_contato, Mensagens.texto_mensagem, Mensagens.data_envio
FROM Mensagens
JOIN Contatos ON Mensagens.id_contato = Contatos.id_contato
WHERE Contatos.nome_contato = 'Ana';

-- exibe todos os contatos mesmo sem registro de mensagem
SELECT Contatos.nome_contato, Mensagens.texto_mensagem, Mensagens.data_envio
FROM Contatos
LEFT JOIN Mensagens ON Contatos.id_contato = Mensagens.id_contato;