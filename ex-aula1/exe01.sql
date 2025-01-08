CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
	id bigint auto_increment,
    nome VARCHAR(255) not null,
    data_admissao date,
    cargo VARCHAR(255),
    salario decimal(6,2),
    primary key(id)
);

INSERT INTO tb_colaboradores (nome, data_admissao, cargo, salario)
VALUES 	("Maria Joaquina", "2023-01-15", "Analista de Recursos Humanos", 4500.00),
		("Jessica Rosario", "2024-03-20", "Desenvolvedor Fullstack", 3500.50),
		("Joanna Maria", "2021-05-10", "Assistente Administrativo", 3200.00),
		("Abelardo Roza", "2024-06-01", "Jovem Aprendiz", 1800.95),
		("Arrascaeta da Silva", "2020-12-05", "Designer Gráfico", 5200.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores SET salario = 3700.74 WHERE id = 2;



