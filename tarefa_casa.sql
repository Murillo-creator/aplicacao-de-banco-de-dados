-- tarefa
USE DB_T05072C_MURILLO_FREITAS;

INSERT INTO Contatos (nome_contato, telefone)
VALUES  ('Murillo', '(11)98627-7236');

SELECT id_contato, nome_contato 
From Contatos
WHERE nome_contato = 'Murillo';

INSERT INTO Mensagens (texto_mensagem, id_contato)
VALUE ('Como foi a viagem? Pegou chuva?', 12);

SELECT * FROM Mensagens;

SELECT Contatos.nome_contato, Mensagens.texto_mensagem, Mensagens.data_envio
FROM Mensagens
JOIN Contatos ON Mensagens.id_contato = Contatos.id_contato
WHERE Contatos.nome_contato = 'Murillo';