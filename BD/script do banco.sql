CREATE DATABASE champions;
USE champions;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(15),
	nomeTIMEF VARCHAR (50),
    fkTimeUCL int,
    foreign key (fkTimeUCl) references TIMESUCL (idTimeUCL)
);
						
insert into usuario values (null,'Pedro','pedro@ucl.com','pedrinho123','São Paulo',2001),
                           (null,'Wilker','wilker@sptech.school','1234','São Paulo',2004),
                           (null,'Thais de frança','thais@sptech.school','1234','São Paulo',2013),
                           (null,'Mauricio','mauricio@sptech.school','123','Corinthians',2006),
                           (null,'Eduardo Begattini','eduardobegattini@gmail.com','54321','Time Feminino',2016),
                           (null,'Mateus','mateus@sptech.school','12345','Corinthians',2004),
                           (null,'Luigi','lulu@gmail.com','12345','Palmeiras',2000),
                           (null,'Leonardo Pinho','leonardo.pinho@sptech.school','1234','Barcelona',2004),
                           (null,'Gustavo','gusta.goncalves@hotmail.com','Flamengo','12345',2002),
                           (null,'Irineu','irineu@gmail.com','1234','Criciuma',2016),
                           (null,'Gabriel Bordin','biel@gmail.com','123','Santos',2014),
                           (null,'Nicolas','nick@gmail.com','1122','Borussia Dortmound',2013),
                           (null,'Rafa','rafael.oliveira@sptech.school','rafa','Corinthians',2006),
                           (null,'Ruy','ruy@gmail.com','1234','Vasco da Gama',2002),
                           (null,'Michelly','Michelly@gmail.com','1234','Corinthians',2002),
                           (null,'Rafaela','rafaela.dias@sptech.school','123','Corinthians',2000),
                           (null,'Gabriel','gabriel.antonio@hotmail.com','ascd123','Corinthians',2007),
                           (null,'Patrick','patrick@gmail.com','1234','Corinthians',2007),
                           (null,'Lourenzo Mota','lourenzo.silva@gmail.com','1234567','Corinthians',2000),
                           (null,'Ezequiel','ezequiel@gmail.com','0907','Santos',2004),
                           (null,'Vitinho','victorlage@gmail.com','ODLA','Flamengo',2001),
                           (null,'Fabio','fabo@gmail.com','123','Corinthians',2002),
                           (null,'Kaique','kaique@gmail.com','1234','São Paulo',2001);
                           
select * from usuario;

CREATE TABLE TIMESUCL (
idTimeUCL INT PRIMARY KEY AUTO_INCREMENT,
nomeTime VARCHAR(45)
)auto_increment = 2000;

INSERT INTO TIMESUCL VALUES (null,'Real Madrid'),
                            (null,'Milan'),
                            (null,'Liverpool'),
                            (null,'Bayer Munchin'),
                            (null,'FC Barcelona'),
                            (null,'Ajax'),
                            (null,'Manchester United'),
                            (null,'Internazionale'),
                            (null,'Juventos'),
                            (null,'Benfica'),
                            (null,'Porto'),
                            (null,'Chealsea'),
                            (null,'Feyenoord'),
                            (null,'Borrusia Dortmound'),
                            (null,'Celtic'),
                            (null,'Hamburgo'),
                            (null,'Aston Villa'),
                            (null,'PSV'),
                            (null,'Estrela Vermelha'),
                            (null,'Steaute'),
                            (null,'Olympique de Marseillie'),
                            (null,'Nottingham Forest');
select * from TIMESUCL;                        
select TIMESUCL.nomeTime, count(usuario.idUsuario) as 'Quantidade de Votos' from Usuario join TIMESUCL on fkTimeUCL = idTimeUCL group by TIMESUCL.nomeTime; 

create table Contato (
idContato int primary key auto_increment,
nome VARCHAR(45),
email VARCHAR(45),
mensagem varchar (300)
)auto_increment= 1000;

insert into Contato values (null,'Wilker','wilker@spetch.school','Site esta ficando execelente parabéns pelo projeto');
select * from Contato;