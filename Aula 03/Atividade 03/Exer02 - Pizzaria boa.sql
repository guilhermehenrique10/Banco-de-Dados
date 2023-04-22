-- Criar o Banco de dados db_pizzaria_legal
CREATE DATABASE db_pizzaria_boa;

-- Selecionar o Banco de Dados db_pizzaria_legal
USE db_pizzaria_boa;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias_pizza(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
sabor varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias_pizza (sabor, descricao)
VALUES ("Napolitana", "Feita com massa de pizza, mussarela, azeite, manjericão e molho de tomate ");

INSERT INTO tb_categorias_pizza (sabor, descricao)
VALUES ("Portuguesa", "Feita com massa de pizza, presunto, ovo cozido, cebola picada, tomate em rodelas ");

INSERT INTO tb_categorias_pizza (sabor, descricao)
VALUES ("Calabresa", "Feita com massa de pizza, calabresa, molho, azeitonas ");

INSERT INTO tb_categorias_pizza (sabor, descricao)
VALUES ("Bacon", "Feita com massa de pizza, mussarela, molho, bacon ");

INSERT INTO tb_categorias_pizza (sabor, descricao)
VALUES ("Catupiry", "Feita com massa de pizza, frango desfiado ");

INSERT INTO tb_categorias_pizza (sabor, descricao)
VALUES ("Catu", "Feita com massa de pizza, frango desfiado ");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias_pizza;

-- Criar a Tabela tb_pizzas
CREATE TABLE tb_pizza(
id bigint AUTO_INCREMENT,
tamanho varchar(255) NOT NULL,
preco decimal(6, 2) NOT NULL,
quantidade int,
borda varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias_pizza (id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Grande", 50.00, 1, "S", 1);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Média", 45.00, 2, "S", 2);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Pequena", 30.00, 3, "N", 3);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Mini", 10.00, 4, "N", 4);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Super Grande", 60.00, 1, "S", 5);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Mini", 10.00, 1, "S", 4);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Média", 45.00, 2, "S", 2);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Grande", 50.00, 3, "S", 1);

INSERT INTO tb_pizza (tamanho, preco, quantidade, borda, categoria_id)
VALUES ("Pequena", 30.00, 1, "N", 3);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45.00;

SELECT * FROM tb_pizza WHERE preco > 50.00 AND preco < 100;

SELECT * FROM tb_pizza WHERE tamanho LIKE "%M%";

SELECT * FROM tb_pizza INNER JOIN tb_categorias_pizza ON tb_pizza.categoria_id = tb_categorias_pizza.id;

SELECT * FROM tb_pizza INNER JOIN tb_categorias_pizza ON tb_pizza.categoria_id = tb_categorias_pizza.id
WHERE tb_categorias_pizza.sabor = "Portuguesa" ORDER BY sabor;

