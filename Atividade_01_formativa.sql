Create database Universidade_1e;
use Universidade_1e;


create table UNIVERSIDADE(
id_uni int primary key auto_increment,
Nome varchar (255),
Telefone varchar (255),
Rua varchar (255),
Cidade varchar (255),
Numero int,
Cep varchar (255),
Bairro varchar (255)
);

create table ESTUDANTES(
id_estudante int primary key auto_increment,
Nome varchar (255),
Telefone varchar (255),
Rua varchar (255),
Cidade varchar (255),
Numero int,
Cep varchar (255),
Bairro varchar (255),
id_uni int,
foreign key(id_uni) references UNIVERSIDADE(id_uni)
);


INSERT INTO UNIVERSIDADE(Nome, Telefone, Rua, Cidade, Numero, Cep, Bairro)
values ('Universidade de São Paulo (USP)', '(11) 3091-1234', 'Av. Prof. Luciano Gualberto', 'São Paulo', 374, '05508-010', 'Butantã'),
('Universidade Estadual de Campinas (Unicamp)', '(19) 3521-1234', 'Rua Sérgio Buarque de Holanda', 'Campinas', 500, '13083-859', 'Barão Geraldo'),
('Universidade Federal do Rio de Janeiro (UFRJ)', '(21) 3938-1234', 'Av. Athos da Silveira Ramos', 'Rio de Janeiro', 149, '21941-611', 'Cidade Universitária'),
('Pontifícia Universidade Católica do Rio de Janeiro (PUC-Rio)', '(21) 3527-1234', 'Rua Marquês de São Vicente', 'Rio de Janeiro', 225, '22451-900', 'Gávea'),
('Universidade Federal de Minas Gerais (UFMG)', '(31) 3409-1234', 'Av. Antônio Carlos', 'Belo Horizonte', 6627, '31270-901', 'Pampulha');

INSERT INTO ESTUDANTES(Nome, Telefone, Rua, Cidade, Numero, Cep, Bairro, id_uni)
values('João Silva', '(11) 91234-5678', 'Rua das Rosas', 'São Paulo', 123, '12345-678', 'Vila Mariana', 1),
('Maria Oliveira', '(19) 93456-7890', 'Av. das Acácias', 'Campinas', 456, '13083-456', 'Barão Geraldo', 2),
('Pedro Santos', '(21) 99876-5432', 'Rua do Sol', 'Rio de Janeiro', 789, '21941-234', 'Botafogo', 3),
('Ana Costa', '(31) 98765-4321', 'Av. das Palmeiras', 'Belo Horizonte', 321, '31270-901', 'Savassi', 4),
('Lucas Ferreira', '(11) 92345-6789', 'Rua Nova', 'São Paulo', 654, '05508-010', 'Butantã', 5);


select * from UNIVERSIDADE;
select * from ESTUDANTES;

       UPDATE ESTUDANTES
       set Nome = "Matheus Azevedo"
       where id_estudante = 1;
       
       
       UPDATE UNIVERSIDADE
       set Nome = "UNE - União Nacional dos Estudantes "
       where id_uni = 3;
       
       
       delete from ESTUDANTES
       where id_estudante = 5;
       
       
	CREATE view  vw_estudantes_uni as
      SELECT
           estudantes.nome AS Nome_do_Estudante,
           Universidade.nome AS Nome_da_Universidade,
           Universidade.rua AS Rua_da_Universidade
           
       FROM
           estudantes
       INNER JOIN
           Universidade ON estudantes.id_uni = Universidade.id_uni;
           
           select * from vw_estudantes_uni;