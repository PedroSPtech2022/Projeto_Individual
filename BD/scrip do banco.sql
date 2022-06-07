CREATE DATABASE champions;
USE champions;

CREATE TABLE usuario (
	idUsuario INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(45),
	email VARCHAR(45),
	senha VARCHAR(15),
	nomeTIMEF VARCHAR (50),
    fkTimeUCL INT,
    FOREIGN KEY (fkTimeUCl) REFERENCES TIMESUCL (idTimeUCL)
);
						
INSERT INTO usuario VALUES (NULL,'Pedro','pedro@ucl.com','pedrinho123','São Paulo',2001),
                           (NULL,'Wilker','wilker@sptech.school','1234','São Paulo',2004),
                           (NULL,'Thais de frança','thais@sptech.school','1234','São Paulo',2013),
                           (NULL,'Mauricio','mauricio@sptech.school','123','Corinthians',2006),
                           (NULL,'Eduardo Begattini','eduardobegattini@gmail.com','54321','Time Feminino',2016),
                           (NULL,'Mateus','mateus@sptech.school','12345','Corinthians',2004),
                           (NULL,'Luigi','lulu@gmail.com','12345','Palmeiras',2000),
                           (NULL,'Leonardo Pinho','leonardo.pinho@sptech.school','1234','Barcelona',2004),
                           (NULL,'Gustavo','gusta.goncalves@hotmail.com','Flamengo','12345',2002),
                           (NULL,'Irineu','irineu@gmail.com','1234','Criciuma',2016),
                           (NULL,'Gabriel Bordin','biel@gmail.com','123','Santos',2014),
                           (NULL,'Nicolas','nick@gmail.com','1122','Borussia Dortmound',2013),
                           (NULL,'Rafa','rafael.oliveira@sptech.school','rafa','Corinthians',2006),
                           (NULL,'Ruy','ruy@gmail.com','1234','Vasco da Gama',2002),
                           (NULL,'Michelly','Michelly@gmail.com','1234','Corinthians',2002),
                           (NULL,'Rafaela','rafaela.dias@sptech.school','123','Corinthians',2000),
                           (NULL,'Gabriel','gabriel.antonio@hotmail.com','ascd123','Corinthians',2007),
                           (NULL,'Patrick','patrick@gmail.com','1234','Corinthians',2007),
                           (NULL,'Lourenzo Mota','lourenzo.silva@gmail.com','1234567','Corinthians',2000),
                           (NULL,'Ezequiel','ezequiel@gmail.com','0907','Santos',2004),
                           (NULL,'Vitinho','victorlage@gmail.com','ODLA','Flamengo',2001),
                           (NULL,'Fabio','fabo@gmail.com','123','Corinthians',2002),
                           (NULL,'Kaique','kaique@gmail.com','1234','São Paulo',2001),
                           (NULL,'Matheus do Carmo','matheus.carmo@gmail.com','matheus123','Corinthians',2000);
                           
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
fkUsuario int,
FOREIGN KEY (fkUsuario) REFERENCES Usuario (idUsuario),
idTimeC INT,
PRIMARY KEY (fkUsuario,idTimeC)
); 