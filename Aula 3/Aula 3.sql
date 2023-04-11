-- Apagar Banco de Dados db_quitanda
DROP DATABASE db_quitanda;

-- Recriar o Banco de dados db_quitanda
CREATE DATABASE db_quitanda;

-- Selecionar o Banco de Dados db_quitanda
USE db_quitanda;

-- Criar a tabela tb_categorias
CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categorias
INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");


INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ("outros");

-- Lista todos os dados da tabela tb_categorias
SELECT * FROM tb_categorias;

-- Criar a Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int, 
dtvalidade date NULL,
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- Insere dados na tabela tb_produtos
INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Maçã", 1000, "2022-03-07", 1.99, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Banana", 1300, "2022-03-08", 5.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Laranja", 3000, "2022-03-13", 10.00, 1);

INSERT INTO tb_produtos (nome, quantidade, dtvalidade, preco, categoria_id)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Tomate", 1105, "2022-03-15", 3.00, 3);

INSERT INTO tb_produtos(nome, quantidade, dtvalidade, preco, categoria_id)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Cinza", 1118, 0.50);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola Verde", 1118, 0.50);

-- Visualiza todos os dados da tabela tb_produtos
SELECT * FROM tb_produtos;

SHOW FULL COLUMNS FROM tb_produtos;

SELECT * FROM tb_produtos ORDER BY nome;

SELECT * FROM tb_produtos ORDER BY nome DESC;

-- Pode colocar mais de um atributo em ordem 
SELECT * FROM tb_produtos ORDER BY nome, preco DESC;

SELECT * FROM tb_produtos WHERE NOT categoria_id = 1;

-- Vou pesquisar dentro do atributo preco valores específicos iguais a...
SELECT * FROM tb_produtos WHERE preco IN (5,10,15);

-- Pegar todos os valores entre 5 e 15, simplificar a consulta
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

SELECT * FROM tb_produtos WHERE nome LIKE "ra%";

-- Mais usado
SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";

SELECT * FROM tb_produtos WHERE nome LIKE "%ra";

SELECT COUNT(*) FROM tb_produtos;

SELECT COUNT(categoria_id) FROM tb_produtos;

SELECT SUM(preco) FROM tb_produtos;

-- Possibilitar alterar a descrição
SELECT SUM(preco) AS Soma_Preço FROM tb_produtos;

SELECT AVG(preco) AS Média_Preço FROM tb_produtos;

-- Agrupa o calculo a partir da média da quantidade daqueles produtos que têm naquela categoria 
SELECT categoria_id, AVG(preco) AS Média_Preço FROM tb_produtos GROUP BY categoria_id;

SELECT categoria_id, AVG(preco) AS Média_Preço FROM tb_produtos GROUP BY categoria_id ORDER BY	Média_Preço;

SELECT MAX(preco) FROM tb_produtos;

SELECT MIN(preco) FROM tb_produtos;

-- INER JOINpegando a interseçao  VA trazer os produtos que tem relaçao com a tabela categoria a interseçãoptimize
-- Left Join vai trazer os produtos que não tem relação tem relação com pro
-- se não tem relação o INNER JOIN não trás
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

-- left join pega a intercessao que tem relação e os não tem também
SELECT * FROM tb_produtos LEFT JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos RIGHT JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
-- rIGHT mostra todos os dados da direita que não tem relação, intercessao no caso
-- . pertecer a tabela produtos pertence a categoria_id = ao id tb categoria

-- tabem pode fazer assim prafiltrandoa s d
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.descricao = "frutas"
ORDER BY = nome;