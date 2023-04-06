-- Query para criação de banco de dados
CREATE DATABASE db_quitanda;

-- Query para deletar o banco de dados
DROP DATABASE db_quitanda;

-- Começar utilizar o banco
USE db_quitanda;

-- Criar tabela e popular
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null, 
    -- not null, signica que não pode ser vazio
    quantidade int,
    preco decimal(6,2) not null,
    -- decimal (tamanho, casas)
    primary key(id)
    );
    
-- Visiualizar a tabela
SELECT * FROM tb_produtos;

-- Popular tabela 
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("tomate", 100, 8.80)

values ("banana", 200, 12.000;
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.000;
values ("uva", 1200, 30.00;
values ("perâ", 500, 2.99;

-- buscas especificas
SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos Where id = 1;

SELECT * FROM tb_produtos Where preco < 5.00 AND quantidade < 100;

-- Desabilitar nossa segurança do SQL, número 0 desativado e número 1 ativado, só deletar se tiver o WHERE
SET SQL_SAFE_UPDATES = 1;

-- Atualizar colunas da tabela
UPDATE tb_produtos SET PRECO = 5.00 WHERE id = 1;

-- Deletar itens
DELETE FROM tb_produtos WHERE ID = 2;

-- Atualizar Coluna
ALTER TABLE tb_produtos MODIFY PRECO DECIMAL (6,2);

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;
-- Usou o DROP para excluir pq é uma coluna
-- Drop grande escals banco de dados
-- delere realcionado ao itens, coisas menores
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);
-- No CHANGE é só colocar na frente o nome para o qual quer alterar

-- DROP apaga estrutura
-- DELETE paga dados 
-- 5 pessoas- dados
