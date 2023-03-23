create database itecarao3;




create table usuario
(
	
	codigo int NOT NULL,

	nome varchar (255) NOT NULL,

	email varchar (255) NOT NULL,
	
	senha char (60) NOT NULL,
    	
	PRIMARY KEY (codigo)
);