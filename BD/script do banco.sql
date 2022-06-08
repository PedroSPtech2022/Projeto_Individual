CREATE DATABASE champions;
USE champions;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(15),
	fkTimeC INT,
    FOREIGN KEY (fkTimeC) REFERENCES TimeCoracao (idTimeC),
    fkTimeUCL INT,
    FOREIGN KEY (fkTimeUCl) REFERENCES TIMESUCL (idTimeUCL)
);
						
INSERT INTO usuario VALUES (NULL,'Pedro','pedro@ucl.com','pedrinho123',300,2001),
                           (NULL,'Wilker','wilker@sptech.school','1234',301,2004),
                           (NULL,'Thais de frança','thais@sptech.school','1234',302,2013),
                           (NULL,'Mauricio','mauricio@sptech.school','123',303,2006),
                           (NULL,'Eduardo Begattini','eduardobegattini@gmail.com','54321',304,2016),
                           (NULL,'Mateus','mateus@sptech.school','12345',305,2004),
                           (NULL,'Luigi','lulu@gmail.com','12345',306,2000),
                           (NULL,'Leonardo Pinho','leonardo.pinho@sptech.school','1234',307,2004),
                           (NULL,'Gustavo','gusta.goncalves@hotmail.com','12345',308,2002),
                           (NULL,'Irineu','irineu@gmail.com','1234',309,2016),
                           (NULL,'Gabriel Bordin','biel@gmail.com','123',310,2014),
                           (NULL,'Nicolas','nick@gmail.com','1122',311,2013),
                           (NULL,'Rafa','rafael.oliveira@sptech.school','rafa',312,2006),
                           (NULL,'Ruy','ruy@gmail.com','1234',313,2002),
                           (NULL,'Michelly','Michelly@gmail.com','1234',314,2002),
                           (NULL,'Rafaela','rafaela.dias@sptech.school','123',315,2000),
                           (NULL,'Gabriel','gabriel.antonio@hotmail.com','ascd123',316,2007),
                           (NULL,'Patrick','patrick@gmail.com','1234',317,2007),
                           (NULL,'Lourenzo Mota','lourenzo.silva@gmail.com','1234567',318,2000),
                           (NULL,'Ezequiel','ezequiel@gmail.com','0907',319,2004),
                           (NULL,'Vitinho','victorlage@gmail.com','ODLA',320,2001),
                           (NULL,'Fabio','fabo@gmail.com','123',321,2002),
                           (NULL,'Kaique','kaique@gmail.com','1234',322,2001),
                           (NULL,'Matheus do Carmo','matheus.carmo@gmail.com','matheus123',323,2000),
                           (NULL,'Bruna','Bruna@gmail.com','1234',324,2000),
                           (NULL,'Bruno','Bruno@gmail.com','1234',325,2000),
                           (NULL,'Bruna','Bruna.Marquez@gmail.com','1234',326,2000),
                           (NULL,'Bruna','Bruninha@gmail.com','134',327,2000),
                           (NULL,'Junior','Junior@gmail.com','1234',328,2000),
                           (NULL,'Breno','Breno@gmail.com','1234',329,2000),
                           (NULL,'Gabriela','Gabriela@gmail.com','1234',330,2000),
                           (NULL,'Brenos','Brenos@gmail.com','1234',331,2001),
                           (NULL,'Debora','Debora@gmail.com','1234',332,2001),
                           (NULL,'Camila','Camila@gmail.com','1234',333,2001),
                           (NULL,'Jeferson','Jeferson@gmail.com','1234',334,2001);
                           
                           
                           
SELECT * FROM usuario;

CREATE TABLE TIMESUCL (
idTimeUCL INT PRIMARY KEY AUTO_INCREMENT,
nomeTime VARCHAR(45)
)auto_increment = 2000;

INSERT INTO TIMESUCL VALUES (NULL,'Real Madrid'),
                            (NULL,'Milan'),
                            (NULL,'Liverpool'),
                            (NULL,'Bayer Munchin'),
                            (NULL,'FC Barcelona'),
                            (NULL,'Ajax'),
                            (NULL,'Manchester United'),
                            (NULL,'Internazionale'),
                            (NULL,'Juventos'),
                            (NULL,'Benfica'),
                            (NULL,'Porto'),
                            (NULL,'Chealsea'),
                            (NULL,'Feyenoord'),
                            (NULL,'Borrusia Dortmound'),
                            (NULL,'Celtic'),
                            (NULL,'Hamburgo'),
                            (NULL,'Aston Villa'),
                            (NULL,'PSV'),
                            (NULL,'Estrela Vermelha'),
                            (NULL,'Steaute'),
                            (NULL,'Olympique de Marseillie'),
                            (NULL,'Nottingham Forest');
SELECT * FROM TIMESUCL;                        
SELECT TIMESUCL.nomeTime, count(usuario.idUsuario) AS 'Quantidade de Votos' FROM Usuario JOIN TIMESUCL ON fkTimeUCL = idTimeUCL GROUP BY TIMESUCL.nomeTime; 

CREATE TABLE Contato (
idContato INT PRIMARY KEY auto_increment,
nome VARCHAR(45),
email VARCHAR(45),
mensagem VARCHAR (300)
)auto_increment= 1000;

INSERT INTO Contato VALUES (NULL,'Wilker','wilker@spetch.school','Site esta ficando execelente parabéns pelo projeto');
SELECT * FROM Contato;

CREATE TABLE TimeCoracao(
idTimeC INT PRIMARY KEY AUTO_INCREMENT,
nomeTimeC VARCHAR (45)
)AUTO_INCREMENT=300;

INSERT INTO TimeCoracao VALUES (NULL,'São Paulo'), 
                               (NULL,'São Paulo'),
                               (NULL,'São Paulo'),
                               (NULL,'Corinthians'),
                               (NULL,'Time Feminino'),
                               (NULL,'Corinthians'),
                               (NULL,'Palmeiras'),
                               (NULL,'Barcelona'),
                               (NULL,'Flamengo'),
                               (NULL,'Criciuma'),
                               (NULL,'Borussia Dortmound'),
                               (NULL,'Corinthians'),
                               (NULL,'Vasco da Gama'),
                               (NULL,'Corinthians'),
                               (NULL,'Corinthians'),
                               (NULL,'Corinthians'),
                               (NULL,'Corinthians'),
                               (NULL,'Corinthians'),
                               (NULL,'Santos'),
                               (NULL,'Flamengo'),
                               (NULL,'Corinthians'),
                               (NULL,'São Paulo'),
                               (NULL,'São Paulo'),
                               (NULL,'Corinthians'),
                               (NULL,'Corinthians'),
                               (NULL,'São Paulo'),
                               (NULL,'São Paulo'),
                               (NULL,'São Paulo'),
                               (NULL,'São Paulo'),
                               (NULL,'Flamengo'),
                               (NULL,'Flamengo'),
                               (NULL,'Flamengo'),
                               (NULL,'Flamengo'),
                               (NULL,'Santos'),
                               (NULL,'Santos');
                               
                               
SELECT * FROM TimeCoracao;                           