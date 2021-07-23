create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
tipo varchar(255) not null,
preco decimal,
ativo boolean not null,
primary key(id)
);

create table tb_pizza(
id bigint auto_increment,
pedacos int,
sabor varchar(255),
borda varchar(255),
acompanhamento varchar(255),
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

insert into tb_categoria(tipo, preco, ativo) values ("Salgada", 40.00, true);
insert into tb_categoria(tipo, preco, ativo) values ("Doce", 50.00, true);
insert into tb_categoria(tipo, preco, ativo) values ("Meio a meio", 45.00, true);
insert into tb_categoria(tipo, preco, ativo) values ("Salgada", 25.00, true);
insert into tb_categoria(tipo, preco, ativo) values ("Doce", 35.00, true);

insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (8, "Portuguesa", "Com catupiry", "Guaraná", 4);
insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (8, "Marguerita", "Com requeijão", "Coca-Cola", 4);
insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (4, "Chocolate com morango", "Leite condensado", "Água", 2);
insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (8, "Pepperoni", "Sem nada", "Del Vale de uva", 1);
insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (6, "Brasileira", "Com catupiry", "Sem acompanhamento", 1);
insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (8, "Meia mussarela e meia chocolate", "Sem acompanhamento", "Guaraná", 3);
insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (5, "Doce de leite", "Leite em pó", "Água", 5);
insert into tb_pizza(pedacos, sabor, borda, acompanhamento, categoria_id) values (8, "Calabresa", "Com catupiry", "Guaraná", 1); 

select tb_pizza.sabor, tb_categoria.preco from 
tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.preco > 45;

select tb_pizza.sabor, tb_categoria.preco from 
tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.preco between 29 and 60; 

select * from tb_pizza where sabor like "C%";

select tb_pizza.sabor, tb_categoria.tipo from 
tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id;

select tb_pizza.sabor, tb_categoria.tipo from 
tb_categoria inner join tb_pizza on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.tipo like "Doce";
