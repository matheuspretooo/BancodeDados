create database iteracao1;

create table Tarefas (
	id int NOT NULL,
	descricao varchar (100) NOT NULL,
PRIMARY KEY (id)
);

insert into Tarefas values
(1,'estudar');


select * from Tarefas;