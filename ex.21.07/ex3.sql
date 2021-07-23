create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
producao varchar(255) not null,
escopo varchar(255) not null,
ativo boolean not null,
primary key(id)
);

insert into tb_categoria(producao, escopo, ativo) values ("Nacional", "+18", true);
insert into tb_categoria(producao, escopo, ativo) values ("Nacional", "Todas as idades", true);
insert into tb_categoria(producao, escopo, ativo) values ("Estrangeiro", "+18", true);
insert into tb_categoria(producao, escopo, ativo) values ("Estrangeiro", "Todas as idades", true);
insert into tb_categoria(producao, escopo, ativo) values ("Estrangeiro", "Menores de 60", true);

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal,
tipo varchar(255),
quantidade int,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Dorflex", 5.00, "Comprimido", 1, 2);
insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Dipirona", 15.00, "Gotas", 2, 3);
insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Shampoo", 70.00, "600ml", 4, 4);
insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Engov", 10.00, "Liquido", 1, 2);
insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Vicky", 25.00, "Pomada", 5, 5);
insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Anti-depressivo", 150.00, "Comprimido", 1, 5);
insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Pasta de dente", 5.00, "Não se aplica", 3, 1);
insert into tb_produto(nome, preco, tipo, quantidade, categoria_id) values ("Ibuprofeno", 2.00, "Comprimido", 1, 1);

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "B%";

select tb_produto.nome, tb_categoria.producao from 
tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_categoria.producao from 
tb_categoria inner join tb_produto on tb_categoria.id = tb_produto.categoria_id where producao like "Estrangeiro";




