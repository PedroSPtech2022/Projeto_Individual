CREATE DATABASE Yu_Gi_Oh;
USE Yu_Gi_Oh;

CREATE TABLE Duelistas (
 idDuelista INT PRIMARY KEY AUTO_INCREMENT,
 nomeDuelista VARCHAR (45)
 )AUTO_INCREMENT = 1000;
 
 INSERT INTO Duelistas VALUES (NULL,'Yugi'),
							  (NULL,'Kaiba'),
                              (NULL,'Jaden'),
                              (NULL,'Pegasus');
SELECT * FROM Duelistas;
							
CREATE TABLE Decks (
 idDeck INT PRIMARY KEY AUTO_INCREMENT,
 nomeDeck VARCHAR (45)
);

INSERT INTO Decks VALUES (NULL,'Monstro Normal'),
						 (NULL,'Dragões Brancos'),
                         (NULL,'Herois Elementares'),
                         (NULL,'Monstros do Submundo'),
                         (NULL,'Exodia');
                         
SELECT * FROM Decks;

CREATE TABLE Decks_Duelista(
fkDuelista INT,
FOREIGN KEY (fkDuelista) REFERENCES Duelistas (idDuelista),
fkDecks INT,
FOREIGN KEY (fkDecks) REFERENCES Decks (idDeck),
quantidadeDecks CHAR (1)
);	

INSERT INTO Decks_Duelista VALUES(1000,1,'2'),
                                 (1000,5,'2'),
                                 (1001,2,'1'),
                                 (1002,3,'1'),
                                 (1003,4,'1');
SELECT * FROM Decks_Duelista;

CREATE TABLE Monstros (
 fkDeck INT,
 FOREIGN KEY (fkDeck) REFERENCES Decks (idDeck),
 idMonstro INT,
 PRIMARY KEY (fkDeck,IdMonstro),
 nomeMonstro VARCHAR (45),
 PoderATK DECIMAL (8,2),
 PoderDEF DECIMAL (8,2),
 EfeitoESP VARCHAR (300)
);

INSERT INTO Monstros VALUES (1,10,'Mago Negro','2500','2100','NOT'),
                            (1,11,'Cavaleiro Gaia','2300','2100','NOT'),
                            (1,12,'Kuriboh','300','200','Se descartada durante ataque inimigo não sofre dano'),
                            (1,13,'Guardião Celta','1400','1200','NOT'),
                            (1,14,'Rei Caveira','2500','1200','NOT'),
                            (1,15,'Castor Guerreiro','1200','1500','NOT');
                            
INSERT INTO Monstros VALUES (2,16,'Dragão de Olhos Azuis','3000','2500','NOT'),
						    (2,17,'Canhão X','1800','1500','NOT'),
                            (2,18,'Senhor dos Dragões','1200','1200','Monstros tipo dragão não podem atacar o senhor deles'),
                            (2,19,'Senhor dos Vampiros','2000','1500','Descartando uma carta do tipo magia o senhor pode atacar 2 vezes no turno'),
                            (2,20,'Dragão da Nevasca','1800','1000','NOT');
                            
INSERT INTO Monstros VALUES (3,21,'Heroi Elemental Avian','1000','1000','NOT'),
                            (3,22,'Heroi Elemental Burtinatrix','1200','800','NOT'),
                            (3,23,'Heroi Elemental Homen Bolha','800','1200','NOT'),
                            (3,24,'Heroi Elemental Criança','300','600','Pode evoluir para um heroi mais velho'),
                            (3,25,'Fusão Heroi AvianBurn','2100','1200','So pode ser invocado com fusao do avian e a burtinatrix, poder aumenta de acordo a quantidade de monstros invocados'),
                            (3,26,'Kuriboh Voador','300','200','Não sofre dano ao descartar ela no turno');

INSERT INTO Monstros VALUES (4,27,'Ryu-Ran','2200','2600','NOT'),
							(4,28,'Ilusionista sem Rosto','1200','2200','NOT'),
                            (4,29,'Boneca Mistica','1600','1000','NOT'),
                            (4,30,'Aligator de Desenho','800','1600','NOT');
                            
INSERT INTO Monstros VALUES (5,31,'Exodia Braço Direito','200','300','NOT'),
                            (5,32,'Exodia Braço Esquerdo','200','300','NOT'),
                            (5,33,'Exodia Perna Direita','200','300','NOT'),
                            (5,34,'Exodia Perna Esquerda','200','300','NOT'),
                            (5,35,'Exodia Cabeça','1000','1000','Chama todas as partes pro campo dando um poder Infinito');
                            
SELECT * FROM Monstros;                            
                            
CREATE TABLE CartasEspeciais(
 idCartasESP INT PRIMARY KEY AUTO_INCREMENT,
 nomeCarta VARCHAR (45),
 tipoArmadilha CHAR (1) CHECK (tipoArmadilha = 's' OR tipoArmadilha = 'n'),
 tipoMagia CHAR (1) CHECK (tipoMagia = 's' OR tipoMagia = 'n'),
 descricao VARCHAR (300),
 fkDeck INT,
 FOREIGN KEY (fkDeck) REFERENCES Decks (idDeck)
);

INSERT INTO CartasEspeciais VALUES (NULL,'Pote da Ganância','n','s','Duelista tem direito a puxar mais 2 cartas do deck',1),
                                   (NULL,'Buraco Negro','n','s','Todos os montros em campo são destruidos',1),
                                   (NULL,'Monstro que Renasce','n','s','Faz um monstro renacer do cemitério',1),
                                   (NULL,'Wabuko','s','n','Quando ativada invocador não toma dano e não tem monstros destruidos',1),
                                   (NULL,'Pote da Ganância','n','s','Duelista tem direito a puxar mais 2 cartas do deck',2),
								   (NULL,'Monstro que Renasce','n','s','Faz um monstro renacer do cemitério',2),
                                   (NULL,'Reforço','s','n','Quando ativada aumenta em 500 o poder de ataque do monstro selecionado',2),
                                   (NULL,'Pote da Ganância','n','s','Duelista tem direito a puxar mais 2 cartas do deck',3),
                                   (NULL,'Fusão','n','s','Posibilita fusão de monstros',3),
                                   (NULL,'Ilusão do Homem Bolha','n','s','Cancela armadilhas e reverte o efeito para o invocador',3),
                                   (NULL,'Monstro que Renasce','n','s','Faz um monstro renacer do cemitério',4), 
                                   (NULL,'Wabuko','s','n','Quando ativada invocador não toma dano e não tem monstros destruidos',4),
								   (NULL,'Buraco Negro','n','s','Todos os montros em campo são destruidos',4),
                                   (NULL,'Reforço','s','n','Quando ativada aumenta em 500 o poder de ataque do monstro selecionado',4),
                                   (NULL,'Buraco Negro','n','s','Todos os montros em campo são destruidos',5),
                                   (NULL,'Pote da Ganância','n','s','Duelista tem direito a puxar mais 2 cartas do deck',5),
                                   (NULL,'Wabuko','s','n','Quando ativada invocador não toma dano e não tem monstros destruidos',5);
                                   
                                   
SELECT * FROM CartasEspeciais;                                   