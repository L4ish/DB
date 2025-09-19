CREATE DATABASE db_cidade_dos_vegetais;

USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100) NOT NULL,
fornecedor VARCHAR(255) NOT NULL
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
validade VARCHAR(15) NOT NULL,
valor DECIMAL(6,2) NOT NULL,
estoque VARCHAR(255) NOT NULL,
categoriaid BIGINT
);

-- Criando relacionamento entre as tabelas
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

-- Populando a tabela categorias
INSERT INTO tb_categorias(tipo, fornecedor) 
VALUES ("fruta", "paraiso das frutas");

INSERT INTO tb_categorias(tipo, fornecedor) 
VALUES ("tempero", "reino dos temperos");

INSERT INTO tb_categorias(tipo, fornecedor) 
VALUES ("legume", "imperio dos legumes");

INSERT INTO tb_categorias(tipo, fornecedor) 
VALUES ("verdura", "monte das verduras");

INSERT INTO tb_categorias(tipo, fornecedor) 
VALUES ("sementes", "sementeira favero");

-- Populando a tabela produtos
INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("morango", "25/09/2025", 69.99, "50 kg", 1);

INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("manjericao", "30/09/2025", 5.50, "50 vasos", 2);

INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("cenoura", "28/09/2025", 113.20, "100 kg", 3);

INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("batata inglesa", "24/09/2025", 404.00, "80 unidades", 3);

INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("chia", "31/12/2025", 12.50, "40 pacotes", 5);

INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("banana", "27/09/2025", 7.80, "150 cestas", 1);

INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("salsa", "29/09/2025", 3.00, "60 cestas", 2);

INSERT INTO tb_produtos(nome, validade, valor, estoque, categoriaid) 
VALUES ("cebola", "26/09/2025", 86.50, "120 kg", 4);

-- Listar protudos maior que 50
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Listar protudos entre 50 e 150
SELECT * FROM tb_produtos WHERE valor BETWEEN 50.00 AND 150.00;

-- Listar protudos com a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Unindo os dados da tabela produtos, com os dados da tabela categorias
SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id 
ORDER BY tb_produtos.id; 

-- Unindo os dados da tabela produtos, com os dados da tabela categorias e listando os dados de uma categoria específica
SELECT nome, validade, valor, estoque, tb_categorias.tipo, tb_categorias.fornecedor
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id 
WHERE tb_categorias.tipo = "legume";