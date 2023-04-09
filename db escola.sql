select @@version;
CREATE DATABASE db_escola;

CREATE TABLE tb_alunos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT(2),
media DECIMAL(3,1),
sala INT(2),
serie INT(2),

PRIMARY KEY(id)
);
INSERT INTO tb_alunos(nome, idade, media, sala, serie)
VALUES ("Laura", 19, 8.5, 2, 12);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE media > 7;

SELECT * FROM tb_alunos WHERE media < 7;

UPDATE tb_alunos
SET sala = 2
WHERE id=4;