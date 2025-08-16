# CREATE - create database (criar base de dados)
# CREATE - create table (criar tabela)
create database auto;

#USE - selecionar a base de dados
use auto;

#create table
create table automovel(
idauto int auto_increment not null,
modelo varchar(30) null,
marca varchar (20) null,
valor double null,
primary key(idauto));

create table carro(
idcarro int auto_increment not null,
nomeComprador varchar(200) null,
quantidade int null,
valorTotal double,
autoFK int,
primary key (idcarro),
foreign key(autoFK) references automovel(idauto));

# SELECT - Seleciona tabela ('*') seleciona todos os atributos
select * from automovel;
select * from carro;

# INSERT INTO - Inserir dados ma tabela
insert into automovel(modelo, marca, valor) values ('passeio', 'ETIOS', 14356.2);

insert into carro(nomeComprador,quantidade,valorTotal,autoFK) values ("Chicão",1,2350,2);

#DELETE - Apagar registro
delete from carro where idcarro = 1;

# UPDATE - Atualizar campo
update carro
set quantidade = 2, autoFK = 1
where idcarro = 4;

#CRUD - Create, Read (select), Update, DELETE
select * from automovel;
select marca, valor from automovel;
select * from automovel where idauto = 3;
select modelo, marca from automovel where idauto = 3;


#				  |\
# 0===============| |
# 0===============| |
#				  |/