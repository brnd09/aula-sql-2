create schema exemplo;
show databases;
use exemplo;
create table canteiro(
canteiro_id int primary key,
nome varchar(20),
luz_diaria double(4,3),
agua_diaria double(4,3)
);
create table funcionario(
func_id int primary key,
nome char(80),
idade int
);
create table planta(
planta_id int primary key,
nome char(20),
luz_diaria double(4,3),
agua double(4,3),
peso double(4,3)
);
create table plantio(
plantio_id int primary key,
planta_id int,
foreign key (planta_id) references planta(planta_id),
func_id int,
foreign key (func_id) references funcionario(func_id),
canteiro_id int,
foreign key (canteiro_id) references canteiro(canteiro_id)
);
create table colhido(
colhido_id int primary key,
planta_id int,
foreign key (planta_id) references planta(planta_id),
func_id int,
foreign key (func_id) references funcionario(func_id),
canteiro_id int,
foreign key (canteiro_id) references canteiro(canteiro_id),
data_colhido date,
quantidade int,
peso double(4,3) 
);
