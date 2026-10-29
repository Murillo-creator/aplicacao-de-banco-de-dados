USE DB_T05072C_MURILLO_FREITAS;

-- Tabela de Alunos
CREATE TABLE Aluno_escola(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR (50) NOT NULL,
    sobrenome_aluno VARCHAR (50) NOT NULL,
    curso VARCHAR (100) NOT NULL
);

-- Tabela de Professores
CREATE TABLE Professor_escola(
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome_professor VARCHAR (100) NOT NULL,
    curso VARCHAR (100) NOT NULL
);

-- Tabela de Comentarios
CREATE TABLE Comentario_escola(
    id_comentario INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno int NOT NULL,
    id_professor INT NOT NULL,
    comentario TEXT NOT NULL,
    nota_professor DEC (3,1),
    FOREIGN KEY (id_aluno) REFERENCES Aluno_escola (id_aluno),
    FOREIGN KEY (id_professor) REFERENCES Professor_escola (id_professor)
);

-- Inserindo Alunos
INSERT INTO Aluno_escola (nome_aluno, sobrenome_aluno, curso) 
VALUES
    ('Ana', 'Silva', 'Engenharia de Software'),
    ('Bruno', 'Souza', 'Ciência da Computação'),
    ('Carlos', 'Lima', 'Administração'),
    ('Daniela', 'Costa', 'Engenharia de Software'),
    ('Eduardo', 'Santos', 'Direito'),
    ('Fernanda', 'Oliveira', 'Medicina'),
    ('Gabriel', 'Almeida', 'Ciência da Computação'),
    ('Helena', 'Ribeiro', 'Administração'),
    ('Igor', 'Martins', 'Engenharia Civil'),
    ('Juliana', 'Rocha', 'Psicologia'),
    ('Lucas', 'Carvalho', 'Direito'),
    ('Mariana', 'Dias', 'Medicina'),
    ('Nicolas', 'Fernandes', 'Ciência da Computação'),
    ('Olivia', 'Barbosa', 'Administração'),
    ('Pedro', 'Henrique', 'Engenharia Civil'),
    ('Quintino', 'Ramos', 'Psicologia'),
    ('Rafaela', 'Cardoso', 'Engenharia de Software'),
    ('Samuel', 'Correia', 'Direito'),
    ('Tatiana', 'Farias', 'Medicina'),
    ('Vinicius', 'Moraes', 'Ciência da Computação');

SELECT * FROM Aluno_escola;

-- Inserindo Professores
INSERT INTO Professor_escola (nome_professor, curso) 
VALUES
    ('Carlos Eduardo', 'Engenharia de Software'),
    ('Mariana Souza', 'Ciência da Computação'),
    ('Roberto Carlos', 'Administração'),
    ('Juliana Paes', 'Direito'),
    ('Marcos Vinicius', 'Medicina'),
    ('Patricia Pillar', 'Engenharia Civil'),
    ('Ricardo Silva', 'Psicologia'),
    ('Beatriz Costa', 'Engenharia de Software'),
    ('Fernando Rocha', 'Ciência da Computação'),
    ('Camila Pitanga', 'Administração'),
    ('Rodrigo Santoro', 'Direito'),
    ('Adriana Esteves', 'Medicina'),
    ('Wagner Moura', 'Engenharia Civil'),
    ('Lázaro Ramos', 'Psicologia'),
    ('Taís Araújo', 'Engenharia de Software'),
    ('Cauã Reymond', 'Ciência da Computação'),
    ('Grazi Massafera', 'Administração'),
    ('Selton Mello', 'Direito'),
    ('Bruna Marquezine', 'Medicina'),
    ('Chay Suede', 'Engenharia Civil');

SELECT * FROM Professor_escola;

-- Inserindo Comentarios
INSERT INTO Comentario_escola (id_aluno, id_professor, comentario, nota_professor) 
VALUES
    (1, 1, 'Excelente didática nas aulas de Engenharia de Software, explica muito bem os conceitos de arquitetura.', 9.5),
    (2, 2, 'A professora domina muito algoritmos, mas as aulas às vezes são muito rápidas.', 8.0),
    (3, 3, 'Ótimo professor de Administração, traz casos reais do mercado para a sala de aula.', 10.0),
    (4, 1, 'Gostei muito da forma como conduziu o projeto prático da disciplina.', 9.0),
    (5, 4, 'As aulas de Direito são densas, mas a professora é extremamente competente.', 8.5),
    (6, 5, 'Professor muito atencioso com os alunos de Medicina, tira todas as dúvidas no laboratório.', 9.8),
    (7, 2, 'Consegui aprender bastante programação graças aos exercícios extras.', 9.0),
    (8, 3, 'Achei a prova um pouco longa, mas o conteúdo foi bem explicado.', 7.5),
    (9, 6, 'Explicações muito claras sobre estruturas e cálculos estruturais.', 8.8),
    (10, 7, 'As discussões em sala de aula de psicologia abrem muito a nossa mente.', 9.5),
    (11, 4, 'Muito bom o método de estudo de caso aplicado.', 9.2),
    (12, 5, 'As aulas práticas de anatomia foram fundamentais para o meu aprendizado.', 10.0),
    (13, 9, 'Excelente professor de computação, muito paciente para tirar dúvidas de código.', 9.7),
    (14, 10, 'Metodologia de ensino muito dinâmica e interativa.', 8.9),
    (15, 13, 'Bom professor, mas poderia disponibilizar mais materiais complementares.', 7.8),
    (16, 14, 'Aulas muito reflexivas e enriquecedoras para o curso.', 9.4),
    (17, 15, 'A professora é super engajada e domina muito as tecnologias atuais.', 10.0),
    (18, 18, 'Gostei bastante da abordagem crítica sobre as leis abordadas.', 8.6),
    (19, 19, 'Professora muito dedicada e exigente na medida certa.', 9.1),
    (20, 16, 'Ótimo laboratório de computação, aprendi muito sobre estruturas de dados.', 9.3),
    (1, 8, 'Aulas muito claras e objetivas sobre desenvolvimento web.', 9.0),
    (2, 9, 'Conteúdo muito atualizado com o mercado de tecnologia.', 8.7),
    (3, 10, 'A dinâmica de grupo proposta ajudou bastante na fixação da matéria.', 9.2),
    (4, 15, 'Simplesmente a melhor professora do curso, incentiva muito a pesquisa.', 10.0),
    (5, 11, 'Professor muito pontual e organizado com o cronograma.', 8.5),
    (6, 12, 'Exigente nas avaliações, mas prepara muito bem para a prática médica.', 9.4),
    (7, 16, 'Muito bom nas explicações de lógica de programação.', 8.8),
    (8, 17, 'Aulas de gestão empresarial muito produtivas.', 9.0),
    (9, 6, 'Gostei muito dos exemplos práticos de engenharia.', 9.1),
    (10, 14, 'Excelente domínio da psicologia comportamental.', 9.6),
    (11, 18, 'Abordagem excelente sobre direito civil.', 9.3),
    (12, 19, 'Muito prestativa e atenciosa com os estudantes.', 9.8),
    (13, 2, 'Bom suporte técnico e acadêmico durante todo o semestre.', 8.4),
    (14, 3, 'Professor inspirador para a carreira em administração.', 9.5),
    (15, 6, 'Aulas dinâmicas e focadas na realidade profissional.', 8.9),
    (16, 7, 'Gostei bastante das leituras indicadas ao longo das aulas.', 9.0),
    (17, 1, 'Conteúdo avançado abordado de forma muito acessível.', 9.7),
    (18, 4, 'Excelente oratória e domínio do conteúdo jurídico.', 9.2),
    (19, 5, 'Professor referência na área médica, muito orgulho de ter aulas com ele.', 10.0),
    (20, 9, 'Aulas práticas de laboratório excelentes.', 9.5);

-- Inserindo comentarios mais negativos
INSERT INTO Comentario_escola (id_aluno, id_professor, comentario, nota_professor) 
VALUES
    (1, 3, 'O professor domina a matéria, mas a didática é um pouco arrastada e monótona.', 6.5),
    (2, 8, 'Aulas muito teóricas para uma matéria que deveria ser mais prática. Deixou a desejar.', 5.0),
    (3, 11, 'Professor muito rígido na correção e pouca flexibilidade com prazos.', 4.5),
    (4, 6, 'Achei o conteúdo bastante desatualizado em relação ao mercado atual.', 5.5),
    (5, 7, 'Cobrou na prova assuntos que não foram vistos em sala de aula.', 3.5),
    (6, 13, 'O conteúdo é bom, mas o professor falta com frequência e desorganiza o cronograma.', 4.0),
    (7, 10, 'Achei as explicações confusas e o material disponibilizado é fraco.', 5.8),
    (8, 15, 'Didática mediana, o ritmo das aulas é muito rápido e dificulta o acompanhamento.', 6.0),
    (9, 18, 'Péssima comunicação e demora muito para entregar as notas das avaliações.', 2.5),
    (10, 12, 'Exige demais para o nível atual da turma, provas extremamente difíceis.', 4.8),
    (11, 2, 'Professor justo na correção, mas as aulas podiam ser mais dinâmicas.', 7.0),
    (12, 1, 'Boa aula, mas poderia ter um atendimento individualizado melhor nas dúvidas.', 7.2),
    (13, 17, 'Conteúdo ok, mas a metodologia de ensino deixa um pouco a desejar.', 6.8),
    (14, 20, 'O professor tem bom conhecimento, mas não sabe transmitir o conteúdo claramente.', 5.2),
    (15, 14, 'Aulas regulares. O material de apoio ajudou mais do que as próprias explicações.', 6.0),
    (16, 5, 'Muito exigente e atitude impaciente quando fazemos perguntas em sala.', 3.0),
    (17, 9, 'Falta de organização com as datas das entregas dos trabalhos.', 4.2),
    (18, 16, 'Explica rápido demais e não abre muito espaço para questionamentos.', 5.5),
    (19, 4, 'Avaliações totalmente fora do padrão do que foi ensinado.', 3.8),
    (20, 19, 'O professor é gente boa, mas a aula é muito desestruturada e perdida.', 6.2),
    (3, 1, 'Matéria importante, mas o professor não conseguiu prender a atenção da turma.', 5.0),
    (6, 8, 'Nota mediana. Poderia utilizar mais recursos tecnológicos no ensino.', 6.5),
    (9, 11, 'Pontual, porém extremamente frio e pouco acessível para dúvidas pós-aula.', 5.8),
    (12, 16, 'Didática confusa, tive que estudar praticamente tudo por fora.', 4.0),
    (15, 3, 'Faltou um alinhamento claro sobre os critérios de nota dos trabalhos.', 5.5);

-- Consultas
USE DB_T05072C_MURILLO_FREITAS;
-- Listar todos os alunos e seus cursos
SELECT id_aluno, nome_aluno, curso FROM Aluno_escola;

-- Listar todos os professores e cursos que lecionam
SELECT id_professor, nome_professor, curso 
FROM Professor_escola;

-- Listar comentarios e notas dos alunos com nome do professor
SELECT C.id_aluno, C.comentario, C.nota_professor AS nota, P.nome_professor
FROM Comentario_escola C
JOIN Professor_escola P ON C.id_professor = P.id_professor;

-- Listar comentarios com nota abaixo de 6.0
SELECT C.comentario, C.nota_professor AS nota
FROM Comentario_escola C
WHERE C.nota_professor <6;

-- Listar comentarios com nota acima de 6.0
SELECT C.comentario, C.nota_professor AS nota
FROM Comentario_escola C
WHERE C.nota_professor >6;