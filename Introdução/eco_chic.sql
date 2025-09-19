CREATE DATABASE db_eco_chic;

USE db_eco_chic;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(100) NOT NULL,
tamanho VARCHAR(5) NOT NULL,
valor DECIMAL(8,2) NOT NULL,
cor VARCHAR(80) NOT NULL
);

INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Saia", "M", 555.11, "Verde Lodo");  
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Camisa", "GG", 21.90, "Preto Acinzentado");
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Vestido", "P", 17.33, "Rosa Pastel");  
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Calça", "XG", 701.42, "Azul Celeste");    
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Blusa", "PP", 691.01, "Amarelo Queimado");  
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Casaco", "G", 2005.00, "Dourado Malboro");  
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Short", "XGG", 8.50, "Cinza Azulado");  
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Gravata", "M", 69.99, "Roxo Esverdeado");  
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Meia", "UNICO", 13.17, "Branco");  
INSERT INTO tb_produtos(tipo, tamanho, valor, cor) 
VALUES ("Touca de Cetim", "UNICO", 29.07, "Marrom Perolado");  

SELECT * FROM tb_produtos WHERE valor > 500.00;
SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET valor = 666.66 WHERE id = 10;
