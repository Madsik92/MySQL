CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT,
nome_categoria VARCHAR(255) NOT NULL,
descricao_categoria VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
quantidade_estoque INT,
categoria_id BIGINT, 
PRIMARY KEY(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
); 

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES ("Folhosos", "Vegetais com folhas comestíveis, ricos em nutrientes");

INSERT INTO tb_categorias (nome_categoria, descricao_categoria)
VALUES("Frutos", "Vegetais que são frutos comestíveis, geralmente suculentos"),
("Tubérculos", "Vegetais que crescem sob a terra e são ricos em carboidratos"),
("Legumes", "Vegetais que são sementes ou vagens comestíveis"),
("Ervas", "Vegetais usados para temperar ou aromatizar pratos");

INSERT INTO tb_produtos (nome_produto, preco, quantidade_estoque, categoria_id)
VALUES ("Alface Crespa", 2.50, 100, 1),
("Espinafre", 3.00, 80, 1),
("Tomate Italiano", 4.20, 150, 2),
("Pimentão Verde", 5.50, 60, 2),
("Batata Inglesa", 3.80, 200, 3),
("Cenoura", 4.00, 120, 3),
("Ervilha Congelada", 6.90, 50, 4),
("Manjericão", 2.00, 30, 5);

SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco < 5.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;

SELECT * FROM tb_produtos WHERE nome_produto LIKE '%c%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE nome_categoria LIKE 'Tuberculos%';
