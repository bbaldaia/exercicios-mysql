create database db_estudantes;

use db_estudantes;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int,
nota decimal, 
turma varchar(255),
periodo varchar(255),
primary key(id)
);

select * from tb_estudantes;

insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("gustavo", 14, 9.0, "4a", "manhã");
insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("marcela", 11, 5.0, "1a", "tarde");
insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("murilo", 9, 10.0, "6a", "manhã");
insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("lorena", 7, 3.0, "2a", "noite");
insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("emilia", 12, 8.0, "5a", "manhã");
insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("daise", 16, 10.0, "8a", "noite");
insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("denis", 15, 4.0, "7a", "tarde");
insert into tb_estudantes(nome, idade, nota, turma, periodo) values ("davi", 13, 8.0, "6a", "tarde");

delete from tb_estudantes where id = 8;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set nota = 10 where id = 2;
