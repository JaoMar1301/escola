create database escola;

show databases; -- mostra os bancos de dados

use escola;

create table aluno (
id_aluno int primary key auto_increment,
nome varchar(120) not null,
dt_nascimento date not null
);

create table curso (
id_curso int primary key auto_increment,
nomecurso varchar(80) not null,
periodo varchar(20) not null
);
create table aluno_curso (
id_alunocurso int primary key auto_increment,
fk_curso_id int,
fk_aluno_id int
);
/*questão 11*/
create table sala (
id_sala int primary key auto_increment,
mesas int,
numero int
);

/*-------------------------alter---------------------------------*/

alter table aluno_curso add constraint fk_aluno_curso
foreign key (fk_curso_id)
references curso (id_curso)
on delete cascade;

alter table aluno_curso add constraint fk_curso_aluno
foreign key (fk_aluno_id)
references aluno (id_aluno)
on delete cascade;

alter table aluno
add column email varchar(120);

alter table curso
add column sala int not null;

/*questão 5*/
alter table aluno 
add column cpf varchar(14) not null;

alter table aluno
add column nacionalidade varchar(30);

/*questão 13*/
alter table curso 
add column tipo_aula varchar (10) not null;

/*-----------------------insert-------------------------------------*/

insert into curso (nomecurso, periodo, sala) values ('podologia', 'matutino', '1');
insert into curso (nomecurso, periodo, sala) values ('boiologia', 'matutino', '2'), ('desing_grafico', 'vespertino','3');
insert into curso (nomecurso, periodo, sala) values ('intagramer', 'inexistente', '4'), ('operador_de_cachorro_quente', 'vespertino', '5');

insert into aluno (nome, dt_nascimento, email) values ('joao', '2006-01-13', 'joaomarcelosousadonacimento@gmail.coma');
insert into aluno (nome, dt_nascimento, email) values ('jose', '2000-10-12', 'jose@123');
insert into aluno (nome, dt_nascimento, email) values ('carlos','2005-03-30', 'carlos@gmail');
insert into aluno (nome, dt_nascimento, email) values ('pedro', '2003-05-20', 'pedro@gmail');
insert into aluno (nome, dt_nascimento, email) values ('roberto', '2000-04-25', 'roberto@gmail');
insert into aluno (nome, dt_nascimento, email) values ('rodrigo', '2006-12-12', 'rodrigo@gmail');
insert into aluno (nome, dt_nascimento, email) values ('luiz', '6666-12-30', 'luiz@gmail');
insert into aluno (nome, dt_nascimento, email) values ('pablo','2000-09-09','pablo@gmail');
insert into aluno (nome, dt_nascimento, email) values ('arthur','2000-03-09','arthur@gmail');
insert into aluno (nome, dt_nascimento, email) values ('pablo','2000-09-09','pablo@gmail');
insert into aluno (nome, dt_nascimento, email) values ('valter','2002-09-09','valter@gmail');
insert into aluno (nome, dt_nascimento, email) values ('emanuele','2000-01-09','emanuee@gmail');
insert into aluno (nome, dt_nascimento, email) values ('evely','2023-09-09','pablo@gmail');
insert into aluno (nome, dt_nascimento, email) values ('ricardo','2200-09-09','ricardo@gmail');
insert into aluno (nome, dt_nascimento, email) values ('felipe','2222-09-09','felipe@gmail');
insert into aluno (nome, dt_nascimento, email) values ('fernando','3000-09-09','fernando@gmail');
insert into aluno (nome, dt_nascimento, email) values ('teresa','2099-09-09','pablo@gmail');
insert into aluno (nome, dt_nascimento, email) values ('tatiana','9999-09-09','pablo@gmail');
insert into aluno (nome, dt_nascimento, email) values ('pietro','5555-09-09','pietro@gmail');
insert into aluno (nome, dt_nascimento, email) values ('yago','2200-04-09','yago@gmail');
insert into aluno (nome, dt_nascimento, email) values ('otavio','2000-09-05','otavio@gmail');
insert into aluno (nome, dt_nascimento, email) values ('hitler','2000-03-05','hitler@gmail');
insert into aluno (nome, dt_nascimento, email) values ('renato','2000-12-09','renato@gmail');
insert into aluno (nome, dt_nascimento, email) values ('vitor','2000-01-02','vitor@gmail'),  ('italo','2222-01-28','italo@gmail'),  ('karlos','2300-01-02','karlos@gmail'),  ('escobar','8888-01-02','escobar@gmail'),  ('kkk','2477-01-02','kkk@gmail'),  ('vitor','2000-01-02','vitor@gmail');
insert into aluno (nome, dt_nascimento, email) values ('muçoline','1994-03-05','muçoline@gmail'),  ('alex','2242-01-28','alex@gmail');
insert into aluno (nome, dt_nascimento, email) values ('muço','1994-03-05','muço@gmail'),  ('marjory','2242-03-28','marjory@gmail'), ('barbara', '2222-12-22', 'barbara@gmail');

insert into sala (numero, mesas) values ('1', '10'), ('2', '13'), ('3', '20'), ('3', '21'), ('4', '13'), ('5', '50');

insert into aluno_curso (fk_curso_id, fk_aluno_id) values 
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10);
insert into aluno_curso (fk_curso_id, fk_aluno_id) values 
(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10);
insert into aluno_curso (fk_curso_id, fk_aluno_id) values 
(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20);
insert into aluno_curso (fk_curso_id, fk_aluno_id) values 
(3,21),(3,22),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30);
insert into aluno_curso (fk_curso_id, fk_aluno_id) values 
(4,31),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(4,39),(4,40);
insert into aluno_curso (fk_curso_id, fk_aluno_id) values 
(5,41),(5,42),(5,43),(5,44),(5,45),(5,46),(5,47),(5,48),(5,49),(5,50);

/*questão 4*/
insert into aluno_curso (fk_curso_id, fk_aluno_id) values 
(5,5), (5,18), (5,37), (5,50), (5,53), (5,27), (5,20), (5,19), (5,47), (5,42);

/*-------------------------update----------------------------------*/

/*questão 6*/
update aluno set cpf = ('087.479.651.26') where id_aluno = 1;
update aluno set cpf = ('111.111.111.11') where id_aluno = 2;
update aluno set cpf = ('333.333.333.33') where id_aluno = 3;
update aluno set cpf = ('444.444.444.44') where id_aluno = 4;
update aluno set cpf = ('555.555.555.55') where id_aluno = 5;
update aluno set cpf = ('666.666.666.66') where id_aluno = 6;
update aluno set cpf = ('777.777.777.77') where id_aluno = 7;
update aluno set cpf = ('888.888.888.88') where id_aluno = 8;
update aluno set cpf = ('999.999.999.99') where id_aluno = 9;
update aluno set cpf = ('101.101.101.10') where id_aluno = 10;
update aluno set cpf = ('110.110.110.11') where id_aluno = 11;
update aluno set cpf = ('121.121.121.12') where id_aluno = 12;
update aluno set cpf = ('131.131.131.13') where id_aluno = 13;
update aluno set cpf = ('141.141.141.14') where id_aluno = 14;
update aluno set cpf = ('151.151.151.15') where id_aluno = 15;
update aluno set cpf = ('161.161.161.16') where id_aluno = 16;
update aluno set cpf = ('171.171.171.17') where id_aluno = 17;
update aluno set cpf = ('181.181.181.18') where id_aluno = 18;
update aluno set cpf = ('191.191.191.19') where id_aluno = 19;
update aluno set cpf = ('202.202.202.20') where id_aluno = 20;
update aluno set cpf = ('212.212.212.21') where id_aluno = 21;
update aluno set cpf = ('222.222.222.20') where id_aluno = 22;
update aluno set cpf = ('232.232.232.23') where id_aluno = 23;
update aluno set cpf = ('242.242.242.24') where id_aluno = 24;
update aluno set cpf = ('252.252.252.25') where id_aluno = 25;
update aluno set cpf = ('262.262.262.26') where id_aluno = 26;
update aluno set cpf = ('272.272.272.27') where id_aluno = 27;
update aluno set cpf = ('282.282.282.28') where id_aluno = 28;
update aluno set cpf = ('292.292.292.29') where id_aluno = 29;
update aluno set cpf = ('303.303.303.30') where id_aluno = 30;
update aluno set cpf = ('313.313.313.31') where id_aluno = 31;
update aluno set cpf = ('323.323.323.32') where id_aluno = 32;
update aluno set cpf = ('333.333.333.30') where id_aluno = 33;
update aluno set cpf = ('343.343.343.34') where id_aluno = 34;
update aluno set cpf = ('353.353.353.35') where id_aluno = 35;
update aluno set cpf = ('363.363.363.36') where id_aluno = 36;
update aluno set cpf = ('373.373.373.37') where id_aluno = 37;
update aluno set cpf = ('383.383.383.38') where id_aluno = 38;
update aluno set cpf = ('393.393.393.39') where id_aluno = 39;
update aluno set cpf = ('404.404.404.40') where id_aluno = 40;
update aluno set cpf = ('414.414.414.41') where id_aluno = 41;
update aluno set cpf = ('424.424.424.42') where id_aluno = 42;
update aluno set cpf = ('434.434.434.43') where id_aluno = 43;
update aluno set cpf = ('444.444.444.40') where id_aluno = 44;
update aluno set cpf = ('454.454.454.45') where id_aluno = 45;
update aluno set cpf = ('464.464.464.46') where id_aluno = 46;
update aluno set cpf = ('474.474.474.47') where id_aluno = 47;
update aluno set cpf = ('484.484.484.48') where id_aluno = 48;
update aluno set cpf = ('494.494.494.49') where id_aluno = 49;
update aluno set cpf = ('505.505.505.50') where id_aluno = 50;
update aluno set cpf = ('515.515.515.51') where id_aluno = 51;
update aluno set cpf = ('525.525.525.52') where id_aluno = 52;
update aluno set cpf = ('535.535.535.53') where id_aluno = 53;

update aluno set nacionalidade = ('br') where id_aluno = 1;
update aluno set nacionalidade = ('br') where id_aluno = 2;
update aluno set nacionalidade = ('br') where id_aluno = 3;
update aluno set nacionalidade = ('br') where id_aluno = 4;
update aluno set nacionalidade = ('br') where id_aluno = 5;
update aluno set nacionalidade = ('br') where id_aluno = 6;
update aluno set nacionalidade = ('br') where id_aluno = 7;
update aluno set nacionalidade = ('br') where id_aluno = 8;
update aluno set nacionalidade = ('br') where id_aluno = 9;
update aluno set nacionalidade = ('br') where id_aluno = 10;
update aluno set nacionalidade = ('pt') where id_aluno = 11;
update aluno set nacionalidade = ('pt') where id_aluno = 12;
update aluno set nacionalidade = ('pt') where id_aluno = 13;
update aluno set nacionalidade = ('pt') where id_aluno = 14;
update aluno set nacionalidade = ('pt') where id_aluno = 15;
update aluno set nacionalidade = ('pt') where id_aluno = 16;
update aluno set nacionalidade = ('pt') where id_aluno = 17;
update aluno set nacionalidade = ('pt') where id_aluno = 18;
update aluno set nacionalidade = ('pt') where id_aluno = 19;
update aluno set nacionalidade = ('pt') where id_aluno = 20;
update aluno set nacionalidade = ('us') where id_aluno = 21;
update aluno set nacionalidade = ('us') where id_aluno = 22;
update aluno set nacionalidade = ('us') where id_aluno = 23;
update aluno set nacionalidade = ('us') where id_aluno = 24;
update aluno set nacionalidade = ('us') where id_aluno = 25;
update aluno set nacionalidade = ('us') where id_aluno = 26;
update aluno set nacionalidade = ('us') where id_aluno = 27;
update aluno set nacionalidade = ('us') where id_aluno = 28;
update aluno set nacionalidade = ('us') where id_aluno = 29;
update aluno set nacionalidade = ('us') where id_aluno = 30;
update aluno set nacionalidade = ('us') where id_aluno = 31;
update aluno set nacionalidade = ('us') where id_aluno = 32;
update aluno set nacionalidade = ('us') where id_aluno = 33;
update aluno set nacionalidade = ('us') where id_aluno = 34;
update aluno set nacionalidade = ('us') where id_aluno = 35;
update aluno set nacionalidade = ('us') where id_aluno = 36;
update aluno set nacionalidade = ('cn') where id_aluno = 37;
update aluno set nacionalidade = ('cn') where id_aluno = 38;
update aluno set nacionalidade = ('cn') where id_aluno = 39;
update aluno set nacionalidade = ('cn') where id_aluno = 40;
update aluno set nacionalidade = ('cn') where id_aluno = 41;
update aluno set nacionalidade = ('cn') where id_aluno = 42;
update aluno set nacionalidade = ('cn') where id_aluno = 43;
update aluno set nacionalidade = ('cn') where id_aluno = 44;
update aluno set nacionalidade = ('cn') where id_aluno = 45;
update aluno set nacionalidade = ('cn') where id_aluno = 46;
update aluno set nacionalidade = ('cn') where id_aluno = 47;
update aluno set nacionalidade = ('cn') where id_aluno = 48;
update aluno set nacionalidade = ('cn') where id_aluno = 49;
update aluno set nacionalidade = ('cn') where id_aluno = 50;
update aluno set nacionalidade = ('cn') where id_aluno = 51;
update aluno set nacionalidade = ('cn') where id_aluno = 52;
update aluno set nacionalidade = ('cn') where id_aluno = 53;

update curso set tipo_aula = ('EAD') where id_curso = 1;
update curso set tipo_aula = ('EAD') where id_curso = 3;
update curso set tipo_aula = ('EAD') where id_curso = 5;
update curso set tipo_aula = ('PRE') where id_curso = 2;
update curso set tipo_aula = ('PRE') where id_curso = 4;

/*-----------------select-----------------------*/

/*qustão 1*/
select * from aluno;
/*questão 2*/
select nome, email from aluno;
/*questão 3*/
select id_aluno, nome, email from aluno where id_aluno% 2=0;
/*questão 7*/ 
select nome, cpf from aluno;
/*questão 8*/
select * from aluno_curso where fk_curso_id= 1;
/*questão 14*/
select * from curso where id_curso% 2=1;

select * from aluno;
select * from curso;
select * from aluno_curso;

/*questão 10*/
select * from aluno 
where id_aluno >20;

/*questão 12*/
select * from sala;

select numero from sala;


/*----------------delete--------------------*/

/*questão 9*/
 delete from aluno
 where id_aluno <6;