create database db_ecommerce;

use db_ecommerce;

create table tb_ecommerce(
id bigint auto_increment,
nome varchar(255),
preco decimal,
descricao varchar(255),
noestoque int,
desconto varchar(255),
primary key(id)
);

select * from tb_ecommerce;

insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("dragon ball z", 250.00, "para PS3", 4, "10%");
insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("call of duty", 170.00, "para PS4", 10, "sem desconto");
insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("uncharted 4", 300.00, "para PS4", 20, "50%");
insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("god of war", 200.00, "para PS5", 50, "70%");
insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("crash", 100.00, "para PS3", 2, "5%");
insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("the last of us", 250.00, "para PS5", 300, "sem desconto");
insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("fifa", 300.00, "para PS5", 400, "20%");
insert into tb_ecommerce(nome, preco, descricao, noestoque, desconto) values ("destiny", 120.00, "para PS4", 10, "25%");

update tb_ecommerce set preco = 600.00 where id = 7;
update tb_ecommerce set preco = 600.00 where id = 6;

select * from tb_ecommerce where preco > 500.00;
select * from tb_ecommerce where preco < 500.00;

update tb_ecommerce set desconto = "90%, por tempo ilimitado" where id = 3;