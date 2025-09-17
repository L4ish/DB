CREATE DATABASE db_escola_pequeno_principe;

USE db_escola_pequeno_principe;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
situacao VARCHAR(100) NOT NULL,
nota DECIMAL(4,2) NOT NULL,
matricula VARCHAR(10) NOT NULL
);

INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Gael Monteiro", "Evadido", 3.5, "2547");  
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Ayra Nascimento", "Formado", 9.3, "1283");
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Ícaro Lemos", "Trancado", 7.7, "9125"); 
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Lís Florentino", "Ativo", 8.9, "4101"); 
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Noah Cardoso", "Ativo", 8.9, "5541"); 
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Aurora Menezes", "Trancado", 7.4, "8136"); 
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Bento Azevedo", "Formado", 8.0, "0254"); 
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Cecília Duarte", "Evadido", 2.1, "0932");
INSERT INTO tb_estudantes(nome, situacao, nota, matricula) 
VALUES ("Otto Figueiredo", "Evadido", 6.2, "7854");

SELECT * FROM tb_estudantes WHERE nota > 7.0;
SELECT * FROM tb_estudantes WHERE nota < 7.0;

UPDATE tb_estudantes SET nota = 10.0 WHERE id = 6;