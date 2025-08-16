create database sorveteria; #criar a base
use sorveteria; #selecionar a base

create table sorveteriadorichard(
id int auto_increment not null,
nomelocal varchar (20) null,
CNPJ varchar (20) not null,
primary key(id));

create table atendente(
idatendente int auto_increment not null,
nome varchar (20) null,
datahora date,
primary key (idatendente));

create table pagamento (
idpag int auto_increment not null,
tipopag varchar (20) null,
datapag date,
qtdvezes int,
primary key(idpag));

create table comanda(
idcom int auto_increment not null,
produto varchar (30) null,
valor double null,
total double,
primary key (idcom));

create table caixa(
idcaixa int auto_increment,
datadia date null,
nomeatendente int null,
pagamento int null,
comanda int null,
cnpj int null,
primary key (idcaixa),
foreign key(nomeatendente) references atendente (idatendente),
foreign key(pagamento) references pagamento(idpag),
foreign key (comanda) references comanda (idcom),
foreign key(cnpj) references sorveteriadorichard (id));

#adicionar coluna na tabela atendente 
alter table atendente
add column salario double;

alter table atendente 
add colomn cpf varchar (200) after datahora;

#apagar coluna
alter table atendente
drop column cpf;
