create database prova2;

create table shows(
	codigo int NOT NULL,
    endereco varchar (255) NOT NULL,
    data_hora_inicio datetime NOT NULL,
    data_hora_fim datetime NOT NULL,
    nome varchar (255),
    PRIMARY KEY (codigo)
);

create table ingresso(
	codigo int NOT NULL,
    codigo_show int NOT NULL,
    codigo_cliente int NOT NULL,
    valor numeric (10.2) NOT NULL,
    meia_entrada bit(1) NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_show) REFERENCES shows (codigo),
    FOREIGN KEY (codigo_cliente) REFERENCES cliente (codigo)
);

create table cliente(
	codigo int NOT NULL,
    nome varchar (255) NOT NULL,
    CPF char (11) NOT NULL,
    PRIMARY KEY (codigo)
);


insert into shows values
(1, 'rua de alguma casa', '2022-05-09 13:00:00', '2022-05-09 13:45:00', 'circo de varios palhaços'),
(2, 'rua de algum predio', '2022-05-23 15:25:00', '2022-05-23 16:00:00', 'muitos palhaços');

insert into ingresso values
(1, 2, 1, 50.00, 0),
(2, 1, 1, 25.00, 1);

insert into cliente values
(1, 'rodolfo da silva', '00000000000'),
(2, 'rogerio da silva', '12345678912');


select * from shows;

select * from cliente;

select * from ingresso;

