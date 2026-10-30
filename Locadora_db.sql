USE DB_T05072C_MURILLO_FREITAS;

-- Criando tabelas de uma locadora de veiculos

-- cliente
CREATE TABLE Cliente_locadora(
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR (50) NOT NULL,
    sobrenome VARCHAR (50) NOT NULL,
    telefone VARCHAR (20) NOT NULL,
    email VARCHAR (100) NOT NULL
);

-- veiculo
CREATE TABLE Veiculo_locadora(
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR (50) NOT NULL,
    modelo VARCHAR (50) NOT NULL,
    tipo VARCHAR (50) NOT NULL
);

-- data de locacao
CREATE TABLE Data_locacao(
    id_datalocacao INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL,
    iniciolocacao DATE NOT NULL,
    finallocacao DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente_locadora (id_cliente),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo_locadora (id_veiculo)
);

