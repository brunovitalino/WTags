CREATE DATABASE wtags;
USE wtags;

CREATE TABLE Visitante
(
	id INT(6) UNSIGNED ZEROFILL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO Visitante(nome, telefone) VALUES ('Bruno Vitalino', '99998888');
INSERT INTO Visitante(nome, telefone) VALUES ('Sandra Regina', '99997777');
INSERT INTO Visitante(nome, telefone) VALUES ('Breno Oliveira', '99996666');

SELECT * FROM Visitante;

DROP TABLE Visitante;