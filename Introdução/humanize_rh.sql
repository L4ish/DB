CREATE DATABASE db_humanize_rh;

USE db_humanize_rh;

CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(100) NOT NULL,
salario DECIMAL(8,2) NOT NULL,
signo VARCHAR(100) NOT NULL
);

INSERT INTO tb_colaboradores(nome, cargo, salario, signo) 
VALUES ("Ricarda Flipson", "Analista de Recursos Humanos", 5000.00, "Virgem");  
INSERT INTO tb_colaboradores(nome, cargo, salario, signo) 
VALUES ("Emersina Palonise", "Coordenadora de Saúde Ocupacional", 9000.00, "Touro");  
INSERT INTO tb_colaboradores(nome, cargo, salario, signo) 
VALUES ("Vernessadi Aumentidina", "Auxiliar de Serviços Gerais", 1800.00, "Peixes");
INSERT INTO tb_colaboradores(nome, cargo, salario, signo) 
VALUES ("Selin Douglasona", "Copeira", 1997.00, "Câncer");
INSERT INTO tb_colaboradores(nome, cargo, salario, signo) 
VALUES ("Zanbima Celicartex", "Gerente de Saúde, Segurança e Qualidade de Vida", 9000.00, "Libra");
INSERT INTO tb_colaboradores(nome, cargo, salario, signo) 
VALUES ("Bina Donadel", "Auxiliar de Escritório", 2000.00, "Libra");

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 3500.00 WHERE id = 6;
