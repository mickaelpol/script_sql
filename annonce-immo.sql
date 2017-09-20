CREATE DATABASE immo;
USE immo;

CREATE TABLE users (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);

CREATE TABLE rubrique (
	id_rubrique int(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	title varchar(500)
);

CREATE TABLE annonce (
	id_annonce int(10) AUTO_INCREMENT NOT NULL PRIMARY KEY,
	title varchar(500),
	price FLOAT(2),
	description varchar(500),
	CONSTRAINT fK_users FOREIGN KEY (id_annonce) REFERENCES users(id)
);

CREATE TABLE id_link (
	id_rubrique int(10) NOT NULL,
	id_annonce int(10) NOT NULL,
	CONSTRAINT fk_rubrique FOREIGN KEY (id_rubrique) REFERENCES rubrique(id_rubrique),
	CONSTRAINT fk_annonce FOREIGN KEY (id_annonce) REFERENCES annonce(id_annonce)
);
