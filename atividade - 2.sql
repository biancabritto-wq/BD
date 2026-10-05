CREATE DATABASE empresa;
USE empresa;

CREATE TABLE departamento (
id_departamento INT AUTO_INCREMENT PRIMARY KEY,
nome_departamento VARCHAR (100),
sigla VARCHAR (100)
);

CREATE TABLE funcionario (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100),
    email VARCHAR (100),
    cpf VARCHAR (15),
    id_departamento INT,
    FOREIGN KEY (id_departamento) REFERENCES departamento (id_departamento)
);

CREATE TABLE projeto (
id_projeto INT AUTO_INCREMENT PRIMARY KEY,
nome_projeto VARCHAR (100),
orcamento DECIMAL (10,2)
);


CREATE TABLE funcionario_projeto (
papel VARCHAR (100),
horas_semanais VARCHAR (100),
id_funcionario INT,
FOREIGN KEY (id_funcionario) REFERENCES funcionario (id_funcionario),
id_projeto INT,
FOREIGN KEY (id_projeto) REFERENCES projeto (id_projeto)
);

INSERT INTO departamento (nome_departamento, sigla) VALUES
('Recursos Humanos', 'RH'),
('Tecnologia da Informação', 'TI'),
('Financeiro', 'FIN');

INSERT INTO funcionario (nome, email, cpf) VALUES
('Ana', 'ana@empresa.com', '123.456.789-01'),
('Victor', 'Victor@empresa.com', '234.567.890-02'),
('Lorena', 'lorena@empresa.com', '345.678.901-03');

INSERT INTO projeto (nome_projeto, orcamento) VALUES
('Reformulação do Site', 15000.00),
('Migração de Sistema', 45000.00),
('Auditoria', 20000.00);

INSERT INTO funcionario_projeto (papel, horas_semanais) VALUES
('Gerente de Projeto', '40'),
('Desenvolvedor Lead', '30'),
('Analista Financeiro', '20');

