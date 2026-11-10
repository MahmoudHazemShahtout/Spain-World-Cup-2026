create database spain_world_cup_26;
create table squad_hub(
ShirtNo int primary key unique,
PlayerName varchar(50),
PlayerPosition varchar(3), 
Foot varchar(5),
Club varchar(50),
Age int,
DOB varchar(20),
Height varchar(6),
MarketValue varchar(20),
Apps int,
AppsStart int,
AppsSub int,
MinutesPlayed int,
Passes int,
Tackle int,
Shots int,
Goals int,
Assist int,
OwnGoal int,
Saves int,
Cleansheet int,
Foul int,
YellowCard int,
RedCard int,
TotalRun varchar(20),
POTM int,
Rating varchar(20)
);
alter table squad_hub
drop column MarketValue;
alter table squad_hub
drop column OwnGoal;
alter table squad_hub
drop column TotalRun;
update squad_hub set Height='171 cm' where ShirtNo='3';
insert into squad_hub(ShirtNo,PlayerName,PlayerPosition,Foot,Club,Age,DOB,Height,Apps,AppsStart,AppsSub,MinutesPlayed,Passes,Tackle,Shots,Goals,Assist,Saves,Cleansheet,Foul,YellowCard,RedCard,POTM,Rating)
value('1','David Raya','GK','Right','Arsenal','30','15 Sep 1995','183 cm','0','0','8','0','0','0','0','0','0','0','0','0','0','0','0','0.00'),
('13','Joan Garcia','GK','Right','Barcelona','25','4 May 2001','193 cm','0','0','8','0','0','0','0','0','0','0','0','0','0','0','0','0.00'),
('23','Unai Simon','GK','Right','Athletic Club','29','11 Jun 1997','189 cm','8','8','0','750','197','0','0','0','0','10','7','0','0','0','0','6.95'),
('3','Alejandro Grimaldo','LB','Left','Bayer Leverkusen','30','20 Sep 1995','0','0','8','0','0','0','0','0','0','0','0','0','0','0','0','0','0.00'),
('24','Marc Cucurella','LB','Left','Chelsea','27','22 Jul 1998','175 cm','8','8','0','750','382','4','5','0','2','0','7','8','1','0','0','7.09'),
('4','Eric Garcia','CB','Right','Barcelona','25','9 Jan 2001','182 cm','1','0','8','21','10','0','0','0','0','0','0','1','0','0','0','6.70'),
('14','Aymeric Laporte','CB','Left','Athletic Club','32','27 May 1994','191 cm','8','8','0','728','616','3','5','0','1','0','7','5','1','0','0','7.40'),
('22','Pau Cubarsí','CB','Right','Barcelona','19','22 Jan 2007','184 cm','8','8','0','750','671','5','4','0','0','0','7','4','1','0','0','7.56'),
('2','Marc Pubill','RB','Right','Atletico Madrid','22','20 Jun 2003','190 cm','1','0','8','1','2','0','0','0','0','0','0','0','0','0','0','0.01'),
('12','Pedro Porro','RB','Right','Tottenham Hotspur','26','13 Sep 1999','173 cm','6','6','2','564','323','11','7','2','0','0','5','10','0','0','0','7.45'),
('16','Rodri','CDM','Right','Manchester City','29','22 Jun 1996','191 cm','8','8','0','726','756','18','7','0','0','0','0','11','0','0','1','7.76'),
('5','Marcos Llorente','CM','Right','Atletico Madrid','31','30 Jan 1995','184 cm','3','2','6','193','130','6','0','0','1','0','0','2','0','0','0','7.27'),
('6','Mikel Merino','CM','Left','Arsenal','29','22 Jun 1996','188 cm','8','1','7','210','90','2','5','2','0','0','0','6','0','0','0','6.88'),
('8','Fabián Ruiz','CM','Left','Paris Saint Germain','30','3 Apr 1996','189 cm','8','4','4','331','261','5','8','1','0','0','0','1','0','0','0','6.91'),
('9','Gavi','CM','Right','Barcelona','22','5 Aug 2004','173 cm','2','1','7','82','29','2','1','0','0','0','0','2','0','0','0','6.65'),
('18','Martín Zubimendi','CM','Right','Arsenal','27','2 Feb 1999','180 cm','1','0','8','21','22','0','0','0','0','0','0','0','0','0','0','7.00'),
('20','Pedri','CM','Right','Barcelona','23','25 Nov 2002','174 cm','8','5','3','499','418','8','5','0','0','0','0','4','1','0','0','7.23'),
('15','Álex Baena','LM','Right','Atletico Madrid','24','19 Jul 2001','174 cm','7','7','1','487','176','4','12','1','1','0','0','13','1','0','0','7.04'),
('10','Dani Olmo','CAM','Right','Barcelona','28','7 May 1998','182 cm','8','6','2','495','210','4','13','0','2','0','0','6','0','0','0','7.01'),
('11','Yéremy Pino','CAM','Right','Crystal Palace','23','20 Oct 2002','172 cm','2','0','8','69','24','0','0','0','0','0','0','2','0','0','0','6.35'),
('17','Nico Williams','LW','Right','Athletic Club','23','12 Jul 2002','180 cm','6','0','8','121','44','1','1','0','0','0','0','0','0','0','0','6.50'),
('7','Ferran Torres','ST','Right','Barcelona','26','29 Feb 2000','183 cm','8','1','7','283','66','0','14','1','1','0','0','6','1','0','1','6.46'),
('21','Mikel Oyarzabal','ST','Left','Real Sociedad','29','21 Apr 1997','181 cm','8','8','0','605','126','5','23','5','1','0','0','4','0','0','1','7.14'),
('26','Borja Iglesias','ST','Right','Celta Vigo','33','17 Jan 1993','187 cm','1','0','8','1','0','0','0','0','0','0','0','0','0','0','0','0.01'),
('19','Lamine Yamal','RW','Left','Barcelona','18','13 Jul 2007','183 cm','8','7','1','615','224','9','27','1','0','0','0','14','0','0','1','7.16'),
('25','Víctor Muñoz','RW','Right','Osasuna','22','13 Jul 2003','173 cm','0','0','8','0','0','0','0','0','0','0','0','0','0','0','0','0.00');