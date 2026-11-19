USE DB_T05072C_MURILLO_FREITAS;

-- criando tabelas de uma biblioteca
CREATE TABLE Biblioteca_autores(
    id_autor INT PRIMARY KEY AUTO_INCREMENT,
    nome_autor VARCHAR(100) NOT NULL,
    nacionalidade_autor VARCHAR(20) NOT NULL
);

CREATE TABLE Biblioteca_editoras(
    id_editora INT PRIMARY KEY AUTO_INCREMENT,
    nome_editora VARCHAR(100) NOT NULL,
    editora_contato VARCHAR(100) NOT NULL
);

CREATE TABLE Biblioteca_categorias(
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR (50) NOT NULL
);

CREATE TABLE Biblioteca_livros(
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo_livro VARCHAR(100) NOT NULL,
    isbn CHAR(13) NOT NULL,
    ano_publicacao DATE NOT NULL,
    id_categoria INT NOT NULL,
    id_editora INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES Biblioteca_categorias (id_categoria),
    FOREIGN KEY (id_editora) REFERENCES Biblioteca_editoras (id_editora)
);

CREATE TABLE Biblioteca_livros_autores(
	id_livro INT NOT NULL,
    id_autor INT NOT NULL,
	FOREIGN KEY (id_livro) REFERENCES Biblioteca_livros (id_livro),
    FOREIGN KEY (id_autor) REFERENCES Biblioteca_autores (id_autor)
);

CREATE TABLE Biblioteca_exemplares(
    id_exemplar INT PRIMARY KEY AUTO_INCREMENT,
    status_exemplar VARCHAR(12) NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_livro) REFERENCES Biblioteca_livros (id_livro)
);

-- inserindo dados por importacao em suas respectivas tabelas

USE DB_T05072C_MURILLO_FREITAS;

LOAD DATA LOCAL INFILE 'C:/Users/Murillo/OneDrive/Documentos/A- FAT/biblioteca/biblioteca-autores.csv'
INTO TABLE Biblioteca_autores
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/Users/Murillo/OneDrive/Documentos/A- FAT/biblioteca/biblioteca-editoras.csv'
INTO TABLE Biblioteca_editoras
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/Users/Murillo/OneDrive/Documentos/A- FAT/biblioteca/biblioteca-categorias.csv'
INTO TABLE Biblioteca_categorias
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/Users/Murillo/OneDrive/Documentos/A- FAT/biblioteca/biblioteca-livros.csv'
INTO TABLE Biblioteca_livros
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/Users/Murillo/OneDrive/Documentos/A- FAT/biblioteca/biblioteca-livros_autores.csv'
INTO TABLE Biblioteca_livros_autores
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 rows;

LOAD DATA LOCAL INFILE 'C:/Users/Murillo/OneDrive/Documentos/A- FAT/biblioteca/biblioteca-exemplares.csv'
INTO TABLE Biblioteca_exemplares
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 rows;