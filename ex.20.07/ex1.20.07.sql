create database db_funcionares;

use db_funcionares;

create table tb_funcionares(
id bigint auto_increment,
nome varchar(255),
estadocivil varchar(255),
idade int,
area varchar(255),
salario decimal,
primary key(id)
);

select * from tb_funcionares;

insert into tb_funcionares(nome, estadocivil, idade, area, salario) values ("bruno", "solteiro", 22, "t.i", 3000.00);
insert into tb_funcionares(nome, estadocivil, idade, area, salario) values ("cristina", "solteira", 20, "contabilidade", 1500.00);
insert into tb_funcionares(nome, estadocivil, idade, area, salario) values ("helena", "solteira", 20, "marketing", 1200.00);
insert into tb_funcionares(nome, estadocivil, idade, area, salario) values ("jonathan", "solteiro", 22, "engenharia", 3500.00);
insert into tb_funcionares(nome, estadocivil, idade, area, salario) values ("tamirys", "solteira", 21, "bem-estar", 1000.00);

select * from tb_funcionares where salario > 2000.00;
select * from tb_funcionares where salario < 2000.00;

update tb_funcionares set salario = 2500.00 where id = 2;

