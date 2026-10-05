CREATE DATABASE lanchonete;
USE lanchonete;

CREATE TABLE tempo_pra_receber (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome_cliente VARCHAR (100),
tempo_estimado_minutos INT
);

CREATE TABLE Caixa (
id_pedido INT auto_increment PRIMARY KEY,
tipo_pagamento VARCHAR (50),
nome_operador VARCHAR (100),
valor_total DECIMAL (10,2),
turno_expediente VARCHAR (50)
);

DROP TABLE Caixa;

CREATE TABLE Cozinheiro (
id_cozinheiro INT AUTO_INCREMENT PRIMARY KEY,
nome_cozinheiro VARCHAR (100),
turno_expediente VARCHAR (50),
salario DECIMAL (10,2)
);

CREATE TABLE Pedido (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
id_cliente INT,
idtempo_pra_receber INT,
idCaixa INT,
status_pedido VARCHAR (50),
FOREIGN KEY (idtempo_pra_receber) REFERENCES tempo_pra_receber (id_cliente)
);

CREATE TABLE Recebe_Pedido (
id_cozinheiro INT,
id_pedido INT,
PRIMARY KEY (id_cozinheiro, id_pedido),
FOREIGN KEY (id_cozinheiro) REFERENCES Cozinheiro (id_cozinheiro),
FOREIGN KEY (id_pedido) REFERENCES Pedido (id_pedido)
);

INSERT INTO tempo_pra_receber (nome_cliente, tempo_estimado_minutos) VALUES
('Carlos Andrade', 15),
('Fernanda Costa', 25),
('Lucas Martins', 20);

INSERT INTO Caixa (tipo_pagamento, nome_operador, valor_total, turno_expediente) VALUES
('Cartão de Crédito', 'João ', 45.50, 'Manhã'),
('Pix', 'Maria', 32.00, 'Tarde'),
('Dinheiro', 'Bruno', 58.90, 'Noite');

INSERT INTO Cozinheiro (nome_cozinheiro, turno_expediente, salario) VALUES
('Ana', 'Manhã', 2500.00),
('Victor', 'Tarde', 2600.00),
('Lorena', 'Noite', 2700.00);

INSERT INTO Pedido (status_pedido) VALUES
('Em preparação'),
('Pronto'),
('Entregue');