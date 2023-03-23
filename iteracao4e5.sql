create database semana4;
use semana4;
drop database semana4;

create table tarefa(
	codigo int NOT NULL,
    codigo_usuario int NOT NULL,
    descricao varchar (255) NOT NULL,
    realizada bit(1),
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo)
);
drop table tarefa;


create table usuario(
	codigo int NOT NULL,
    nome varchar (255) NOT NULL,
    email varchar (255) NOT NULL,
	senha char (60) NOT NULL,
    codigo_verficacao char (36) NOT NULL,
    verificado bit(1),
    PRIMARY KEY (codigo)
);

create table alteracao_senha(
	codigo int NOT NULL,
    codigo_usuario int NOT NULL,
    codigo_verificacao varchar (100) NOT NULL, 
    gerada date NOT NULL,
    utilizada bit(1),
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_usuario) REFERENCES usuario(codigo)
);


insert into usuario values
(1, 'matheus', 'matheus@gmail.com', '$2a$12$wY8iCw/d1EedPReZJlqNf.p8BJztr35CT27oPty1WfQ1/9ychHeBO', '2a37dbf6-0920-40f6-802b-74d85e2ae98e', 1),
(2, 'joaquim', 'joaquim@gmai.com', '$2a$12$k16WgBUvxhltycHHK9seVOjZToc/05MPbRViHBCokZgKuGTpAfPdS', 'fbb48f8a-4374-40ae-95b5-d2a6c206b8ce', 1),
(3, 'lais', 'lais@gmail.com', '$2a$12$SxuVziEeoe4tQusdiCnKMOFRm1BcCfkop4uNh/qbwHH7Wca6TttGu', 'fc3e28ac-038d-4a46-b5ec-55dc76fe5504', 1);

select * from tarefa;

use semana4;

insert into tarefa values
(1, 1, 'fazer licao', 0),
(2, 1, 'comprar comida', 0),
(3, 2, 'estudar', 0),
(4, 2, 'passear', 0),
(5, 3, 'jogar', 0),
(6, 3, 'futebol', 0);

insert into alteracao_senha values
(1, 2, '2aee77a8-c5dc-42f0-abf9-49039cd7d333', '2022-04-11', 1);