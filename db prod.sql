select @@version;
CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT,
produto VARCHAR(255),
peso DECIMAL(4,1),
altura DECIMAL(4,1),
largura DECIMAL(4,1),
quantidade INT(2),


PRIMARY KEY(id)
);

INSERT INTO tb_produtos (produto, peso, altura, largura, quantidade)
VALUES ("pen drive", 12.0, 12.0, 3.1, 33);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE quantidade > 10;
SELECT * FROM tb_produtos WHERE quantidade < 10;

UPDATE tb_produtos
SET quantidade = 87
WHERE id=4;