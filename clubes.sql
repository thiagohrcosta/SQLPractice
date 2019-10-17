/* Criação da tabela clubes */

CREATE TABLE clubes(
	id INTEGER PRIMARY KEY,
	Nome TEXT,
	Títulos INTEGER,
	Treinador TEXT);
	
/* Inserindo alguns valores na tabela criada */

INSERT INTO clubes(id, Nome, Títulos, Treinador);
VALUES(1, 'Palmeiras',10,'Mano Menezes');

INSERT INTO clubes(id, Nome, Títulos, Treinador)
VALUES(2, 'Santos',8,'Jorge Sampaoli');

INSERT INTO clubes(id, Nome, Títulos, Treinador)
VALUES(3, 'Corinthians', 7, 'Fábio Carille');

INSERT INTO clubes(id, Nome, Títulos, Treinador)
VALUES(4, 'Flamengo', 6, 'Jorge Jesus');

INSERT INTO clubes (id, Nome, Títulos, Treinador)
VALUES(5, 'São Paulo', 6, '')

/* Conforme é possível notar acima, o São Paulo não possuia um treinador cadastrado,
desta forma, realizou-se um UPDATE dos dados inserindo o referido nome do treinador */

UPDATE clubes
SET Treinador = 'Fernando Diniz'
WHERE Nome = 'São Paulo';


SELECT * FROM clubes