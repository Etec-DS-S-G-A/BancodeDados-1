-- Q1
create database if not exists loja_prova;
use loja_prova;
create table if not exists produto
(
  id int primary key auto_increment,
  nome varchar(50) not null,
  categoria varchar(30),
  preco decimal(8,2),
  estoque int,
  fornecedor varchar(40)
);

describe produto;

-- q2
insert into produto (nome,categoria,preco,estoque,fornecedor)
values
('Mouse Óptico', 'Periféricos', 45.90 , 30 , 'TechSul'),
('Teclado Mecânico', 'Periféricos', 289.90 , 12 , 'TechSul'),
('Monitor 24 pol', 'Monitores', 899.00 , 8 , 'VisionMax'),
('Monitor 27 pol', 'Monitores', 1450.00, 4 , 'VisionMax'),
('SSd 480 GB', 'Armazenamento', 259.90, 25, 'DataPro'),
('HD Externo 1 TB', 'Armazenamento', 349.00 , 10, 'DataPro'),
('Headset Gamer', 'Periféricos', 199.90, 15, 'SoundX'),
('Webcam HD', 'Periféricos', 159.90, 0, 'VisionMax'),
('Pendrive 64GB', 'Armazenamento', 39.90, 50, 'DataPro'),
('Cabo HDMI 2m', 'Acessórios', 29.90, 60, 'TechSul');

select count(*) from produto;

-- q3
select nome, preco from produto
where categoria like 'p%'
order by preco desc;

-- q4
select distinct fornecedor from produto;
 
-- q5
select preco from produto
where preco between 100 and 500;

-- q6
select nome from produto
where nome like 'monitor%';

-- q7
select count(*) from produto
where estoque < 10;

-- q8
select max(preco), min(preco), avg(preco) from produto;

-- q9
select nome from produto
where nome like '%GB';

-- q10
select nome from produto
where nome like '%HD%';

-- Bônus
select sum(preco*estoque) from produto;
