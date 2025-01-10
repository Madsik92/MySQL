CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
nome_classe varchar(255) NOT NULL,
equipamento varchar(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome_personagem VARCHAR(255) NOT NULL,
idade INT, 
raca VARCHAR(255),
ataque INT,
defesa INT,
classe_id BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, equipamento)
VALUES ("Guerreiro", "Espada longa e escudo de madeira reforçado. Armadura de couro endurecido."),
("Mago","Cajado arcano e grimório. Roupas leves com capa mística."),
("Clérigo","Martelo de guerra pequeno e símbolo sagrado. Armadura de cota de malha."),
("Ladino","Adaga e arco curto. Um kit de ferramentas de ladrão para arrombamentos."),
("Druida","Cajado de madeira entalhado e amuletos naturais. Roupas de couro leve."),
("Bárbaro","Machado grande. Roupas de pele resistentes e braceletes de ferro."),
("Paladino","Espada bastarda e escudo com emblema religioso. Armadura de placas simples."),
("Feiticeiro","Varinha encantada. Roupas cerimoniais com detalhes arcanos."),
("Monge","Bastão de combate. Roupas leves de tecido reforçado."),
("Bardo","Rapieira e alaúde. Roupas elegantes e versáteis.");

INSERT INTO tb_personagens (nome_personagem, idade, raca, ataque, defesa, classe_id)
VALUES ("Kaelen D'Arthas", 34, "Humano", 2800, 3600, 7),
("Lyra Mystraven", 120, "Elfa", 2300, 2100, 4),
("Thrag Uron", 28, "Orc", 3400, 2500, 6),
("Zara Moonshade", 22, "Meio-elfa", 3000, 1800, 2),
("Dorin Ironfoot", 150, "Anão", 1900, 4000, 1),
("Evanna Whisperwind", 19, "Halfling", 1500, 1400, 4),
("Mali Blackthorn", 35, "Tiefling", 3200, 1700, 8),
("Astraeon Solis", 27, "Aasimar", 2900, 4500, 3);

SELECT * FROM tb_classes;
SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%c%';

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE nome_classe LIKE 'Ladino%';

