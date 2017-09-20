create database salut;
	create table objet (id int not null primary key  auto_increment, nom varchar(40), plateforme varchar(40), exemplaire int);
		insert into objet (nom, plateforme, exemplaire)values( "minecraft", "PC", 1),("diablo3", "PC", 6),("minecraft","PS4", 2)
