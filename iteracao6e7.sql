create database semana7;
use semana7;	

create table usuario(
	codigo int NOT NULL,
    nome varchar (255) NOT NULL,
    email varchar (255) NOT NULL,
	senha char (60) NOT NULL,
    codigo_verficacao char (36) NOT NULL,
    verificado bit(1),
    PRIMARY KEY (codigo)
);

create table tarefa(
	codigo int NOT NULL,
    codigo_lista int NOT NULL,
    descricao varchar (255) NOT NULL,
    realizada bit(1),
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_lista) REFERENCES lista (codigo)
);

create table lista(
	codigo int NOT NULL,
    codigo_usuario int NOT NULL,
    descrição varchar (255) NOT NULL,
    cor char (6) NOT NULL,
    primary key (codigo),
    foreign key (codigo_usuario) references usuario (codigo)
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

select * from usuario;

insert into lista  values 
(1, 1, 'escola', '676581'),
(2, 1, 'mercado', '678165'),
(3, 1, 'casa', '816577'),
(4, 2, 'escola', 'B05B73'),
(5, 2, 'mercado', '5A172A'),
(6, 2, 'casa', '72ADA7'),
(7, 3, 'escola', '1B736A'),
(8, 3, 'mercado', 'BFBE8A'),
(9, 3, 'casa', 'C2BD24');

select * from lista;


insert into tarefa values
(1, 1, 'fazer lição', 0),
(2, 1, 'estudar para prova de RDI', 0),
(3, 1, 'estudar para prova de biologia', 0),
(4, 2, 'comprar batata', 0),
(5, 2, 'comprar cenoura', 0),
(6, 2, 'comprar macarrão de letrinhas', 0),
(7, 3, 'limpar a sala', 0),
(8, 3, 'limpar meu quarto', 0),
(9, 3, 'limpar a cozinha', 0),
(10, 4, 'estudar', 0),
(11, 4, 'estudar para prova de filosofia', 0),
(12, 4, 'estudar para prova do luk', 0),
(13, 5, 'comprar beterraba', 0),
(14, 5, 'comprar semente', 0),
(15, 5, 'comprar macarrão', 0),
(16, 6, 'limpar o sofa', 0),
(17, 6, 'limpar os quartos', 0),
(18, 6, 'limpar o lavabo', 0),
(19, 7, 'estudar matematica', 0),
(20, 7, 'estudar para geografia', 0),
(21, 7, 'resumo de matematica', 0),
(22, 8, 'cenoura', 0),
(23, 8, 'azeite', 0),
(24, 8, 'arooz', 0),
(25, 9, 'dar banho no cachorro', 0),
(26, 9, 'dar banho no gato', 0),
(27, 9, 'limpar o ps4', 0);

select * from tarefa;

insert into alteracao_senha values
(1, 2, '2aee77a8-c5dc-42f0-abf9-49039cd7d333', '2022-04-11', 1);