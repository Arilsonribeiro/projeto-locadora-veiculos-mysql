CREATE DATABASE locadora_carros;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    cnh VARCHAR(11) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE veiculos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    placa VARCHAR(7) UNIQUE NOT NULL,
    ano INT NOT NULL,
    preco_diaria DECIMAL(10, 2) NOT NULL,
    status ENUM('Disponível', 'Locado', 'Manutenção') DEFAULT 'Disponível'
);

CREATE TABLE locacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_veiculo INT NOT NULL,
    data_retirada DATETIME NOT NULL,
    data_devolucao_prevista DATETIME NOT NULL,
    data_devolucao_real DATETIME,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_veiculo) REFERENCES veiculos(id)
);



INSERT INTO clientes (nome, cpf, cnh, telefone, email) VALUES 
('Carlos Silva', '123.456.789-00', '12345678901', '(11) 98765-4321', 'carlos@email.com'),

('Ana Beatriz Rocha', '987.654.321-11', '98765432109', '(21) 99888-7766', 'ana@email.com');

INSERT INTO veiculos (marca, modelo, placa, ano, preco_diaria) VALUES 
('Fiat', 'Argo', 'ABC1D23', 2023, 120.00),
('Hyundai', 'HB20', 'XYZ9X88', 2024, 140.00),

('Jeep', 'Compass', 'JEP4M55', 2023, 280.00);

INSERT INTO locacoes (id_cliente, id_veiculo, data_retirada, data_devolucao_prevista) VALUES 
(1, 1, '2026-06-15 09:00:00', '2026-06-20 09:00:00');


UPDATE veiculos SET status = 'Locado' WHERE id = 1;

insert into veiculos (marca, modelo, placa, ano, preco_diaria) 
values
('Honda', 'Fit', 'DZJ7G64', 2010, 40.00);

insert into veiculos (marca, modelo, placa, ano, preco_diaria) 
values
('Chevrolet', 'Onix', 'ZFJ7G84', 2020, 90.00);

SELECT * from veiculos where ano = '2020';
