select @@version;
CREATE DATABASE db_generation_game_online;

CREATE TABLE tb_classes(
ClassID BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
elemento VARCHAR(255),

PRIMARY KEY(ClassID)
);

CREATE TABLE tb_personagens(
PersonID BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT(4),
forca INT(2),
agilidade INT(2),

PRIMARY KEY(PersonID)
);
ALTER TABLE tb_personagens ADD ClassId bigint;

ALTER TABLE tb_personagens
ADD FOREIGN KEY (ClassID) REFERENCES tb_classes(ClassID);

INSERT INTO tb_classes(tipo, elemento)
VALUES ("orc","terra");

INSERT INTO tb_personagens(nome, idade, forca, agilidade, ClassID)
VALUES ("Mawride",76,9,9,3);

SELECT * FROM tb_personagens WHERE agilidade > 7;
SELECT * FROM tb_personagens WHERE forca < 8;

SELECT * FROM tb_personagens WHERE nome LIKE "%s%";

SELECT nome, idade, forca, agilidade from tb_personagens
INNER JOIN tb_classes ON tb_classes.ClassID = tb_personagens.ClassId;

SELECT nome, idade, forca, agilidade from tb_personagens
INNER JOIN tb_classes ON tb_classes.ClassID = tb_personagens.ClassId
AND tipo LIKE "%arqueiro%";