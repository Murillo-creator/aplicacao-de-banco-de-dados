USE DB_T05072C_MURILLO_FREITAS;

CREATE TABLE Aluno_escola(
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome_aluno VARCHAR (50) NOT NULL,
    sobrenome_aluno VARCHAR (50) NOT NULL,
    curso VARCHAR (100) NOT NULL
);

CREATE TABLE Professor_escola(
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome_professor VARCHAR (100) NOT NULL,
    curso VARCHAR (100) NOT NULL
);

CREATE TABLE Comentario_escola(
    id_comentario INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno int NOT NULL,
    id_professor INT NOT NULL,
    comentario TEXT NOT NULL,
    nota_professor DEC (3,1),
    FOREIGN KEY (id_aluno) REFERENCES Aluno_escola (id_aluno),
    FOREIGN KEY (id_professor) REFERENCES Professor_escola (id_professor)
);

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

SELECT * FROM Comentario_escola;