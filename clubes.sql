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

INSERT INTO clubes(id, Nome, Títulos, Treinador)
VALUES(6, 'Atlético Mineiro', 1,'Rodrigo Santana');


/* Conforme é possível notar acima, o São Paulo não possuia um treinador cadastrado,
desta forma, realizou-se um UPDATE dos dados inserindo o referido nome do treinador */

UPDATE clubes
SET Treinador = 'Fernando Diniz'
WHERE Nome = 'São Paulo';


/* Conforme anunciado, o Treinador do Atlético Mineiro, Rodrigo Santana foi demitido
após a derrota para o Grêmio em meados de outubro de 2019, para o seu lugar foi 
contratado Vagner Mancini */

UPDATE clubes
SET Treinador = 'Vagner Mancini'
WHERE Nome = 'Atlético Mineiro';

/* Foi solicitado a adição de um clube sem Títulos Brasileiros */

INSERT INTO clubes(id, Nome,Títulos, Treinador)
VALUES(7, 'Brasil de Pelotas',0, 'Bolivar');

/* Contudo, constatou-se posteriormente, que apenas clubes com títulos nacionais
poderiam constar no banco de dados, foi solicitada a exclusão do Brasil de Pelotas */

DELETE FROM clubes 
WHERE Nome = 'Brasil de Pelotas';

SELECT * FROM clubes