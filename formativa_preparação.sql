CREATE DATABASE Aeronave_1e;

use Aeronave_1e;

CREATE TABLE AERONAVE (
id_nave integer primary key auto_increment,
Nome varchar (255) not null,
Comunicador varchar (255),
Destino varchar (255)
);

CREATE TABLE PASSAGEIRO (
id_pass integer primary key auto_increment,
Nome varchar (255),
id_nave int,
Telefone varchar (255),
endereco varchar (255),
foreign key(id_nave) references AERONAVE(id_nave)
);


##inserindo os dados aos atributos, ou colunas da tabela aeronave
INSERT INTO AERONAVE(Nome,Comunicador,Destino)
values ("Airbus A380", "A", "França"),
       ("Airbus A330", "B", "Itália"),
       ("Airbus Beluga", "C", "Dubai"),
       ("Beriev Be-2500", "D", "Orlando"),
       ("Airbus A340-600", "E", "Rússia");
       
       ##inserindo os dados aos atributos, ou colunas da tabela passageiro
       INSERT INTO PASSAGEIRO(Nome,Telefone,Endereco,id_nave)
values ("Luiz", "26 6384-3987", "Avenida Rio Branco,Centro, Rio de Janeiro", 1),
       ("Carlos", "12 3674-3644", "Avenida Almirante Maximiano Fonseca, Zona Portuária, Rio Grande", 2),
       ("Ayrton", "43 6234-4855", "Rua Paracatu, Parque Imperial, São Paulo", 3),
       ("Murillo", "74 5599-7567", "Rua Frederico Moura, Cidade Nova, Franca", 4),
       ("Vinicius", "83 8465-7656", "Rua Pereira Estéfano, Vila da Saúde, São Paulo", 5);
       
       
       select * from AERONAVE;
       select * from PASSAGEIRO;
       
       ##mudando o nome do primeiro passageiro
       UPDATE PASSAGEIRO
       set Nome = "Caio"
       where id_pass = 1;
       
       ##mudando o nome da quinta aeronave
       UPDATE AERONAVE
       set Nome = "Ilyushin Il-76"
       where id_nave = 3;
       
       ##deletando o quinto passageiro
       delete from PASSAGEIRO
       where id_pass = 5;
       
       ##Listar os passageiros com as informações da Aeronave
       ##nome pass, telefone pass, nome aeronave e destino
       
       
	  CREATE view  vw_passageiros_voa as
      SELECT
           passageiro.nome AS Nome_Passageiro,
           aeronave.nome AS Nome_Aeronave,
           aeronave.destino AS Destino_Aeronave
           
       FROM
           passageiro
       INNER JOIN
           aeronave ON passageiro.id_nave = aeronave.id_nave;
           
           select * from vw_passageiros_voa;