create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
vila varchar(255),
nivel varchar(255),
especialidade varchar(255),
primary key(id)
);

create table tb_personagem(
id bigint auto_increment,
nome varchar(255) not null,
idade int not null,
ataque int not null,
defesa int not null,
categoria_id bigint,
primary key(id),
FOREIGN KEY (categoria_id) REFERENCES tb_classe(id)
);

insert into tb_classe (vila, nivel, especialidade) values ("Vila da Folha", "Gennin", "Taijutsu");
insert into tb_classe (vila, nivel, especialidade) values ("Vila da Folha", "Chunnin", "Taijutsu");
insert into tb_classe (vila, nivel, especialidade) values ("Vila da Folha", "Jounnin", "Taijutsu");
insert into tb_classe (vila, nivel, especialidade) values ("Vila da Folha", "ANBU", "Taijutsu");
insert into tb_classe (vila, nivel, especialidade) values ("Vila da Folha", "Hokage", "Taijutsu");

insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Kakashi", 45, 2500, 1900, 3);
insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Nagato", 23, 2300, 1800, 3);
insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Shikamaru", 22, 1900, 800, 2);
insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Boruto", 15, 1100, 400, 1);
insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Chiyo", 24, 1900, 500, 4);
insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Minato", 33, 3000, 1950, 5);
insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Asuma", 35, 1900, 500, 3);
insert into tb_personagem (nome, idade, ataque, defesa, categoria_id) values ("Hashirama", 50, 5000, 1999, 5);

select * from tb_personagem where nome like "c%";

select tb_personagem.nome, tb_personagem.idade, tb_classe.nivel
from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id;

select tb_personagem.nome, tb_classe.nivel from 
tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.categoria_id where tb_classe.nivel = "Jounnin";

