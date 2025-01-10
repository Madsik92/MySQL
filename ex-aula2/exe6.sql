CREATE DATABASE db_meu_curso_minha_vida;
USE db_meu_curso_minha_vida;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(50) NOT NULL,
descricao_categoria VARCHAR(255),
PRIMARY KEY (id)
);

CREATE TABLE tb_cursos(
id BIGINT AUTO_INCREMENT,
nome_curso VARCHAR(255) NOT NULL,
descricao_curso VARCHAR(255),
preco DECIMAL(10,2) NOT NULL,
carga_horaria INT,
categoria_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Programação", "Cursos para aprender linguagens de programação e desenvolvimento de software"),
("Marketing", "Cursos sobre estratégias de marketing digital e vendas"),
("Design", "Cursos sobre design gráfico e UX/UI"),
("Idiomas", "Cursos de aprendizado de línguas estrangeiras"),
("Negócios", "Cursos para gestão, empreendedorismo e finanças");

INSERT INTO tb_cursos (nome_curso, descricao_curso, preco, carga_horaria, categoria_id)
VALUES ("JavaScript para Iniciantes", "Aprenda os fundamentos de JavaScript para web", 199.90, 20, 1),
("Python Avançado", "Técnicas avançadas para programação em Python", 299.90, 40, 1),
("SEO e Marketing de Conteúdo", "Aprenda a criar estratégias de SEO", 149.90, 15, 2),
("Facebook Ads Essencial", "Crie campanhas efetivas com Facebook Ads", 249.90, 25, 2),
("Introdução ao Photoshop", "Ferramentas básicas de edição no Photoshop", 179.90, 18, 3),
("UX Design: Princípios Básicos", "Entenda os fundamentos do design de experiência do usuário", 199.90, 30, 3), 
("Inglês Básico para Viagem", "Frases e expressões úteis para viagens", 99.90, 10, 4),
("Gestão Financeira Pessoal", "Controle melhor suas finanças pessoais", 129.90, 12, 5); 

SELECT * FROM tb_categorias;
SELECT * FROM tb_cursos;

SELECT * FROM tb_cursos WHERE preco > 100.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_cursos WHERE nome_curso LIKE '%c%';

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT * FROM tb_cursos INNER JOIN tb_categorias
ON tb_cursos.categoria_id = tb_categorias.id
WHERE nome_categoria LIKE 'programacao%';

