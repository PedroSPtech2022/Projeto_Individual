CREATE DATABASE champions;
USE champions;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
	email VARCHAR(50),
	senha VARCHAR(50),
	nomeTIMEF VARCHAR (50),
    fkTimeUCL int,
    foreign key (fkTimeUCl) references TIMESUCL (idTime)
);						
select * from usuario;
insert into usuario values (1,'Pedro','pedro@ucl.com','pedrinho123','São Paulo', 2001),
                           (2,'Wilker','wilker@sptech.school','1234','São Paulo', 2004),
                           (3,'Thais de frança','thais@sptech.school','1234','São Paulo',2012),
                           (4,'Mauricio','mauricio@sptech.school','123','Corinthians',2006),
                           (5,'Eduardo Begattini','eduardobegattini@gmail.com','54321','Time Feminino',2016),
                           (6,'Mateus','mateus@sptech.school','12345','Corinthians',2004),
                           (7,'Luigi','lulu@gmail.com','12345','Palmeiras',2000),
                           (8,'Leonardo Pinho','leonardo.pinho@sptech.school','Barcelona',2004),
                           (9,'Gustavo','gusta.goncalves@hotmail.com','Flamengo','12345',2002),
                           (10,'Irineu','irineu@gmail.com','1234','Criciuma',2016),
                           (11,'Gabriel Bordin','biel@gmail.com','123','Santos',2014),
                           (12,'Nicolas','nick@gmail.com','1122','Borussia Dortmound',2012),
                           (13,'Rafa','rafael.oliveira@sptech.school','rafa','Corinthians',2006),
                           (14,'Ruy','ruy@gmail.com','1234','Vasco da Gama',2002),
                           (15,'Michelly','Michelly@gmail.com','1234','Corinthians',2002),
                           (16,'Rafaela','rafaela.dias@sptech.school','123','Corinthians',2000),
                           (17,'Gabriel','gabriel.antonio@hotmail.com','ascd123','Corinthians',2007),
                           (18,'Patrick','patrick@gmail.com','1234','Corinthians',2007),
                           (19,'Lourenzo Mota','lourenzo.silva@gmail.com','1234567','Corinthians',2000),
                           (20,'Ezequiel','ezequiel@gmail.com','0907','Santos',2004),
                           (21,'Vitinho','victorlage@gmail.com','ODLA','Flamengo',2015),
                           (22,'Fabio','fabo@gmail.com','123','Corinthians',2002);

select TIMESUCL.nomeTime, count(usuario.id) as 'Quantidade de Votos' from Usuario join TIMESUCL on fkTimeUCL = idTIme group by TIMESUCL.nomeTime;  

CREATE TABLE TIMESUCL (
idTime INT PRIMARY KEY AUTO_INCREMENT,
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

select * from usuario;                   