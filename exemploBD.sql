-- Bianca --
CREATE DATABASE loja_virtual;
USE loja_virtual;
CREATE TABLE clientes (
id_cliente INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
email VARCHAR (100),
telefone VARCHAR (15),
data_cadastro DATE
);
-- Altera itens na tabela --
ALTER TABLE clientes ADD cpf VARCHAR(14);
ALTER TABLE clientes MODIFY telefone VARCHAR(20);
ALTER TABLE clientes RENAME TO consumidores;
DROP TABLE consumidores;

-- cria um index --
CREATE INDEX idx_nome_cliente
ON clientes (nome);

-- remove um index --
DROP INDEX idx_nome_cliente
ON clientes;

-- apaga todo o banco de dados --
DROP DATABASE loja_virtual;

-- criando uma nova tabela (pedidos) --
CREATE TABLE pedidos (
id_pedido INT AUTO_INCREMENT PRIMARY KEY,
data_pedido DATE,
valor_total DECIMAL(10,2) CHECK (valor_total > 0),
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);