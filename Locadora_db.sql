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


-- inserindo dados de cliente
INSERT INTO Cliente_locadora (nome_cliente, sobrenome, telefone, email) 
VALUES
    ('Lucas', 'Silva', '(11) 98765-4321', 'lucas.silva@email.com'),
    ('Mariana', 'Costa', '(21) 99123-4567', 'mariana.costa@email.com'),
    ('Carlos', 'Oliveira', '(31) 98888-1122', 'carlos.oliveira@email.com'),
    ('Beatriz', 'Santos', '(41) 97777-3344', 'beatriz.santos@email.com'),
    ('Gabriel', 'Almeida', '(51) 96666-5566', 'gabriel.almeida@email.com'),
    ('Ana', 'Souza', '(61) 95555-7788', 'ana.souza@email.com'),
    ('Rafael', 'Rodrigues', '(71) 94444-9900', 'rafael.rodrigues@email.com'),
    ('Juliana', 'Ferreira', '(81) 93333-2233', 'juliana.ferreira@email.com'),
    ('Bruno', 'Martins', '(11) 92222-4455', 'bruno.martins@email.com'),
    ('Camila', 'Barbosa', '(21) 91111-6677', 'camila.barbosa@email.com'),
    ('Diego', 'Ribeiro', '(31) 99888-8899', 'diego.ribeiro@email.com'),
    ('Larissa', 'Cardoso', '(41) 98777-1111', 'larissa.cardoso@email.com'),
    ('Matheus', 'Gonçalves', '(51) 97666-2222', 'matheus.goncalves@email.com'),
    ('Natália', 'Vieira', '(61) 96555-3333', 'natalia.vieira@email.com'),
    ('Thiago', 'Nunes', '(71) 95444-4444', 'thiago.nunes@email.com'),
    ('Patrícia', 'Moraes', '(81) 94333-5555', 'patricia.moraes@email.com'),
    ('Rodrigo', 'Cavalcanti', '(11) 93222-6666', 'rodrigo.cavalcanti@email.com'),
    ('Vanessa', 'Pinto', '(21) 92111-7777', 'vanessa.pinto@email.com'),
    ('Felipe', 'Araújo', '(31) 91000-8888', 'felipe.araujo@email.com'),
    ('Renata', 'Teixeira', '(41) 99999-0000', 'renata.teixeira@email.com');

-- inserindo dados de veiculo
INSERT INTO Veiculo_locadora (marca, modelo, tipo) 
VALUES
    ('Fiat', 'Argo', 'Hatch'),
    ('Volkswagen', 'Polo', 'Hatch'),
    ('Chevrolet', 'Onix', 'Hatch'),
    ('Hyundai', 'HB20', 'Hatch'),
    ('Toyota', 'Corolla', 'Sedan'),
    ('Honda', 'Civic', 'Sedan'),
    ('Chevrolet', 'Cruze', 'Sedan'),
    ('Nissan', 'Versa', 'Sedan'),
    ('Jeep', 'Renegade', 'SUV'),
    ('Jeep', 'Compass', 'SUV'),
    ('Hyundai', 'Creta', 'SUV'),
    ('Volkswagen', 'T-Cross', 'SUV'),
    ('Renault', 'Duster', 'SUV'),
    ('Fiat', 'Toro', 'Picape'),
    ('Toyota', 'Hilux', 'Picape'),
    ('Chevrolet', 'S10', 'Picape'),
    ('Ford', 'Ranger', 'Picape'),
    ('Honda', 'HR-V', 'SUV'),
    ('Fiat', 'Mobbi', 'Hatch'),
    ('Renault', 'Kwid', 'Hatch');

-- inserindo dados de locacao
INSERT INTO Data_locacao (id_cliente, id_veiculo, iniciolocacao, finallocacao) 
VALUES
    (1, 5, '2026-01-10', '2026-01-15'),
    (2, 1, '2026-01-12', '2026-01-18'),
    (3, 9, '2026-01-15', '2026-01-22'),
    (4, 14, '2026-01-20', '2026-01-25'),
    (5, 3, '2026-02-01', '2026-02-05'),
    (6, 6, '2026-02-03', '2026-02-10'),
    (7, 10, '2026-02-05', '2026-02-12'),
    (8, 15, '2026-02-10', '2026-02-20'),
    (9, 2, '2026-02-14', '2026-02-19'),
    (10, 7, '2026-02-18', '2026-02-25'),
    (11, 11, '2026-02-20', '2026-03-01'),
    (12, 16, '2026-02-22', '2026-02-28'),
    (13, 4, '2026-03-01', '2026-03-04'),
    (14, 8, '2026-03-02', '2026-03-09'),
    (15, 12, '2026-03-05', '2026-03-12'),
    (16, 17, '2026-03-08', '2026-03-15'),
    (17, 18, '2026-03-10', '2026-03-17'),
    (18, 19, '2026-03-12', '2026-03-14'),
    (19, 20, '2026-03-15', '2026-03-20'),
    (20, 13, '2026-03-18', '2026-03-25'),
    (1, 2, '2026-04-01', '2026-04-06'),
    (3, 11, '2026-04-03', '2026-04-10'),
    (5, 15, '2026-04-07', '2026-04-14'),
    (8, 6, '2026-04-10', '2026-04-15'),
    (10, 9, '2026-04-12', '2026-04-20');

