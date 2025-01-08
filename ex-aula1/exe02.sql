CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome_produto varchar(255) not null,
    quantidade int,
    data_fabricacao date,
    preco decimal(8,2),
	primary key(id)
);

INSERT INTO tb_produtos (nome_produto, quantidade, data_fabricacao, preco)
VALUES  ("Smartphone Galaxy S22", 243,"2023-08-15", 4299.00),
		("Notebook Dell Inspiron", 123,"2023-05-20", 3999.00),
        ("Smart TV LG 55'' 4K", 44,"2023-07-10", 2799.00),
        ("Fone Bluetooth JBL", 167,"2023-12-01", 499.00),
        ("Tablet Samsung Tab A8", 243,"2023-09-25", 1399.00),
		("Console PlayStation 5", 289,"2023-11-05", 4599.00),
        ("Smartwatch Xiaomi Mi", 44,"2023-10-15", 799.00),
        ("Caixa de Som Alexa Echo", 167,"2023-11-30", 379.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;


