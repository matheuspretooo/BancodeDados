create database teste;

use teste;

create table paciente(
	codigo int NOT NULL,
    CPF char(11) NOT NULL,
    nome varchar (255) NOT NULL,
    nascimento date NOT NULL,
    PRIMARY KEY (codigo)
);

create table consulta(
	codigo int NOT NULL,
    codigo_paciente int NOT NULL,
    sala int NOT NULL,
    inicio datetime NOT NULL,
    fim datetime NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_paciente) REFERENCES paciente (codigo)
    );


create table medico(
	codigo int NOT NULL,
    codigo_consulta int NOT NULL,
    nome varchar (255) NOT NULL,
    especialidade varchar (255) NOT NULL,
    PRIMARY KEY (codigo),
    FOREIGN KEY (codigo_consulta) REFERENCES consulta (codigo)
);

insert into paciente values
(1, 12345678912, 'Matheus Augusto Preto Santana', '2004-02-20');

insert into consulta values
(1, 1, 12, '2022-04-25 14:30:00', '2022-04-25 15:30:00');

insert into medico values
(1, 1, 'Ricardo da Silva', 'ortopedista');



