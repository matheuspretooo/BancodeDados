create database iteracao1;

create table Tarefas (
	id int NOT NULL,
	descricao varchar (100) NOT NULL,
    realizada bit (1),
PRIMARY KEY (id)
);

insert into Tarefas values
(1, 'estudar', 0),
(2, 'licao do latorre', 0),
(3, 'comprar carne moida', 0);

update Tarefas
set realizada = 1
where id = 2;

select * from Tarefas;