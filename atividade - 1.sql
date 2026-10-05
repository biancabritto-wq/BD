CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno (
id_aluno INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
email VARCHAR (100),
cpf VARCHAR (15)
);

CREATE TABLE professor (
id_professor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR (100),
email VARCHAR (100),
cpf VARCHAR (15),
id_aluno INT,
FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno)
);

CREATE TABLE cursos (
id_cursos INT AUTO_INCREMENT PRIMARY KEY,
disciplina VARCHAR (100),
id_aluno INT,
FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
id_professor INT,
FOREIGN KEY (id_professor) REFERENCES professor (id_professor)
);

CREATE TABLE alunoCurso (
id_alunoCurso INT AUTO_INCREMENT PRIMARY KEY,
semestre VARCHAR (100),
id_aluno INT,
FOREIGN KEY (id_aluno) REFERENCES aluno (id_aluno),
id_cursos INT,
FOREIGN KEY (id_cursos) REFERENCES cursos (id_cursos)
);

INSERT INTO aluno (nome, email, cpf) VALUES
('Ana', 'ana@gmail.com', '123.456.789-01'),
('Victor', 'victor@gmail.com', '234.567.890-02'),
('Lorena', 'lorena@email.com', '345.678.901-03');

INSERT INTO professor (nome, email, cpf, id_aluno) VALUES
('Tom', 'tom.prof@email.com', '456.789.012-04', 1),
('Ricardo', 'ricardo.prof@email.com', '567.890.123-05', 2),
('Grazi', 'grazi.prof@email.com', '678.901.234-06', 3);

INSERT INTO cursos (disciplina) VALUES
('Banco de dados'),
('Back End'),
('Programação');

INSERT INTO alunoCurso (semestre) VALUES
('2026.1'),
('2026.1'),
('2026.2');




