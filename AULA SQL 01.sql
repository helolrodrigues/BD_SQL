# CREATE - Criar base de dados ou tabela
create database auto;
# USE - selecionar base de dados
use auto;

#CREATE TABLE - criar tabela
create table automovel(
idauto int auto_increment not null,
modelo varchar (30) null,
ano int null,
nomeveiculo varchar(40) null,
marca varchar (20) null,
valor double null,
primary key (idauto));

create table carro (
idcarro int auto_increment not null,
nomecomprador varchar (200) null,
quantidade int null, 
valorfinal double null, 
autoFK int  null, 
primary key (idcarro),
foreign key (autoFK) references automovel(idauto));

#SELECT - Selecionar tabela (s) - '*' seleciona todos os campos da tabela
select * from automovel;


