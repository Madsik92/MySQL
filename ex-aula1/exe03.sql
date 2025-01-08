CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
	id bigint auto_increment,
    nome varchar(255) not null,
    idade int not null,
    serie varchar(50) not null,
    nota decimal(3,2) not null,
    primary key(id)
);

INSERT INTO tb_estudantes (nome, idade, serie, nota)
VALUES ("Ana Clara", 14, "9º Ano", 8.5),
	("João Pedro", 14, "9º Ano", 6.8),
	("Marina Alves", 14, "9º Ano", 7.3),
	("Lucas Silva", 13, "9º Ano", 5.9),
	("Beatriz Costa", 14, "9º Ano", 9.0),
	("Rafael Pedroza", 14, "9º Ano", 6.5),
	("Lara Mendes", 13, "9º Ano", 7.8),
	("Thiago Souza", 14, "9º Ano", 4.5);
    
SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;
