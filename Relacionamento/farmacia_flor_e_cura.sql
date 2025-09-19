CREATE DATABASE db_farmacia_flor_e_cura;

USE db_farmacia_flor_e_cura;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100) NOT NULL,
descricao VARCHAR(500)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
quantidade VARCHAR(15) NOT NULL,
valor DECIMAL(6,2) NOT NULL,
tratamento VARCHAR(255) NOT NULL,
nacionalidade VARCHAR(100) NOT NULL,
categoriaid BIGINT
);

-- Criando relacionamento entre as tabelas
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoriaid) REFERENCES tb_categorias (id);

-- Populando a tabela categorias
INSERT INTO tb_categorias(tipo, descricao) 
VALUES ("suplemento", "suplemento a base de cannabis sativa rico em cbd, desenvolvido para promover equilibrio do sistema imunologico e digestivo, e relaxamento. ideal para apoio ao sono e reducao do estresse. uso conforme orientacao profissional.");

INSERT INTO tb_categorias(tipo, descricao) 
VALUES ("creme", "creme a base de cannabis sativa com cbd, formulado para aliviar tensoes musculares, reducao de inflamacoes e hidratar a pele. promove de bem estar e relaxamento. uso topico conforme orientacao profissional.");

INSERT INTO tb_categorias(tipo, descricao) 
VALUES ("capsula", "capsulas a base de cannabis sativa com cbd, desenvolvidas para auxiliar no equilibrio do organismo, apoiar o sono e reduzir o estresse. uso conforme orientacao de profissional de saude.");

INSERT INTO tb_categorias(tipo, descricao) 
VALUES ("oleo", "oleo de cannabis sativa com cbd, para bem estar, relaxamento, apoio a saude mental e sono tranquilo. uso conforme orientacao profissional.");

INSERT INTO tb_categorias(tipo, descricao) 
VALUES ("inalador", "inalador a base de cannabis sativa com cbd, para alivio rapido de dor, ansiedade e nausea, promovendo bem estar imediato. uso conforme orientacao de profissional de saude.");

-- Populando a tabela produtos
INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("cannabalance suplemento", "30ml", 59.99, "equilibrio do organismo e relaxamento", "brasileira", 1);

INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("relaxcreme cbd", "50g", 129.50, "alivio de tensoes musculares e hidratar a pele", "uruguaia", 2);

INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("capsulas zen cbd", "60 unidades", 179.90, "apoio ao sono e reducao do estresse", "chilena", 3);

INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("oleo serenidade", "30ml", 159.90, "bem estar, relaxamento e suporte a saude mental", "cubana", 4);

INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("inalador rapid relief", "10ml", 99.90, "alivio rapido de dor, ansiedade e nausea", "brasileira", 5);

INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("cannaboost suplemento", "60ml", 209.90, "fortalecimento do sistema imunologico e digestivo", "brasileira", 1);

INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("creme vitalidade cbd", "100g", 49.90, "redução de inflamações e hidratação profunda da pele", "brasileira", 2);

INSERT INTO tb_produtos(nome, quantidade, valor, tratamento, nacionalidade, categoriaid) 
VALUES ("capsulas foco cbd", "30 unidades", 189.90, "melhora da concentracao e equilibrio do organismo", "brasileira", 3);

-- Listar protudos maior que 50
SELECT * FROM tb_produtos WHERE valor > 50.00;

-- Listar protudos entre 5 e 60
SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60.00;

-- Listar protudos com a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

-- Unindo os dados da tabela produtos, com os dados da tabela categorias
SELECT * FROM tb_produtos 
INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id 
ORDER BY tb_produtos.id; 

-- Unindo os dados da tabela produtos, com os dados da tabela categorias e listando os dados de uma categoria específica
SELECT nome, quantidade, valor, tratamento, nacionalidade, tb_categorias.tipo, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoriaid = tb_categorias.id 
WHERE tb_categorias.tipo = "capsula";

