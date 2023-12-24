CREATE TABLE ALUNOS (
	matricula SERIAL NOT NULL PRIMARY KEY,
	sobrenome VARCHAR(90) NOT NULL,
	dat_nascimento DATE
)

ALTER TABLE ALUNOS 
	ADD COLUMN nome VARCHAR(90) NOT NULL,
	ADD COLUMN email VARCHAR(90) NOT NULL,
	ADD COLUMN endereço VARCHAR(100) NOT NULL;


INSERT INTO alunos (nome, sobrenome, dat_nascimento, email, endereço) VALUES
('Tiago', 'Marinho', '1979-08-08', 'tmarinho@email.com.br', 'Av. 320'),
('Cecilia', 'Monteiro', '1974-05-07', 'cmonteiro@email.com', 'Av. 320');

SELECT * FROM alunos

