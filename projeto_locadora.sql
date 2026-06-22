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

insert into locacoes (id_cliente, id_veiculo, data_retirada, data_devolucao_prevista) values
(2,3,	'2026-06-18 08:00:00','2026-06-21 10:00:00');  
Update veiculos 
set status = 'Locado'
where id = 3;

SELECT * from veiculos;

insert into veiculos (marca, modelo, placa, ano, preco_diaria)
values
('Chevrolet', 'Prisma', 'FJH7G51', 2015, 90.00);

select*from veiculos;
Insert into clientes (nome, cpf, cnh, telefone, email) VALUES 
('Amanda Souza', '584.684.789-10', '45123458701', '(11) 98765-4325', 'amanda@email.com'),
('Cristina Pereira', '467.257.843-20', '59423458701', '(11) 98765-4326', 'cristina@email.com');


SELECT * from clientes;

insert into clientes (nome, cpf, cnh, telefone, email) values 
('Thiago Silva', '231.456.789-10','23145678901', '(11) 98765-4321', 'thiago.mendonca@gmail.com'),
('Mariana Costa Ribeiro','234.567.890-12', '23456789012', '(21) 97654-3210','mari.ribeiro@gmail.com'),
('Carlos Eduardo Souza', '345.678.901-23', '34567890123', '(31) 96543-2109', 'carlos.dudu@gmail.com'),
('Ana Beatriz Cavalcanti','456.789.012-34','45678901234', '(81) 95432-1098', 'ana.cavalcanti@gmail.com'),
('Rodrigo Alves Pereira','567.890.123-45','56789012345','(51) 94321-0987', 'rodrigo.alves@gmail.com'),
('Juliana Martins Lopes','678.901.234-56','67890123456','(61) 93210-9876', 'ju.lopes@gmail.com'),
('Lucas Gabriel Ferreira','789.012.345-67','78901234567', '(19) 92109-8765','lucas.ferreira@gmail.com'),
('Camila Rocha Antunes','890.123.456-78','89012345678', '(41) 91098-7654','camila.antunes@gmail.com'),
('Bruno Henrique Almeida','901.234.567-89','90123456789','(71) 90987-6543','bruno.almeida@gmail.com'),
('Letícia Vieira Santos','012.345.678-90','01234567890','(85) 99876-5432','leticia.santos@gmail.com');


SELECT * from clientes;

insert into veiculos (marca, modelo, placa, ano, preco_diaria)
values

('Chevrolet','Onix Hatch 1.0','ABZ1K23','2023','110.00'),
('Volkswagen','Polo TSI','EFG4H56','2024','130.00'),
('Fiat','Argo Drive','IJK7L89','2022','105.00'),
('Hyundai','HB20 Comfort','MNO0P12','2023','115.00'),
('Fiat','Cronos Drive','QRS3T45','2023','125.00'),
('Chevrolet','Onix Plus (Sedan)','UVW6X78','2024','135.00'),
('Toyota','Corolla XEi','YZA9B01','2023','260.00'),
('Honda','Civic Civic Hybrid','CDE2F34','2024','290.00'),
('Jeep','Renegade Longitude','GHI5J67','2022','180.00'),
('Hyundai','Creta Limited','KLM8N90','2023','195.00'),
('Volkswagen','T-Cross Comfortline','OPQ1R23','2024','210.00'),
('Fiat','Toro Freedom (Diesel)','STU4V56','2023','280.00'),
('Toyota','Hilux SRV 4x4','WXY7Z89','2024','450.00'),
('BYD','Dolphin GS (Elétrico)','BCD0E12','2024','220.00'),
('GWM','Haval H6 HEV (Híbrido)','FGH3I45','2024','340.00');

select * from clientes;


INSERT INTO locacoes (id_cliente, id_veiculo, data_retirada, data_devolucao_prevista) VALUES 
(4, 8, '2026-06-22 11:00:00', '2026-06-29 12:00:00');


UPDATE veiculos SET status = 'Locado' WHERE id = 8;

insert into locacoes (id_cliente, id_veiculo, data_retirada, data_devolucao_prevista) values
(5,59,'2026-06-22 09:00:00','2026-06-29 09:00:00');  
Update veiculos 
set status = 'Locado'
where id = 59;

select * from veiculos;
select * from clientes;

insert into locacoes (id_cliente, id_veiculo, data_retirada, data_devolucao_prevista) values
(14,57,'2026-06-22 11:00:00','2026-06-30 07:00:00','2026-06-30 07:00:00');  
Update veiculos 
set status = 'Locado'
where id = 57;

select * from veiculos;
select * from clientes;
select * from locacoes;

select  
clientes.nome,
clientes.cpf,
veiculos.id,
veiculos.marca,
veiculos.modelo,
veiculos.placa,
locacoes.data_retirada,
locacoes.data_devolucao_prevista
from locacoes
inner join clientes ON locacoes.id_cliente = clientes.id 
inner join veiculos ON locacoes.id_veiculo = veiculos.id;

























