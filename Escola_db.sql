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