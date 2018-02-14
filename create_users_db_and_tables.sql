USE tlogger;

CREATE TABLE tLog
(
  id int NOT NULL AUTO_INCREMENT,
  timeAcquis varchar(20) NOT NULL,
  timeStamp timestamp NOT NULL,
  t1 double NOT NULL,
  t2 double NOT NULL,
  t3 double NOT NULL,
  t4 double NOT NULL,
  t5 double NOT NULL,
  t6 double NOT NULL,
  t7 double NOT NULL,
  t8 double NOT NULL,
  t9 double NOT NULL,
  t10 double NOT NULL,
  t11 double NOT NULL,
  t12 double NOT NULL,
  t13 double NOT NULL,
  t14 double NOT NULL,
  t15 double NOT NULL,
  t16 double NOT NULL,
  t17 double NOT NULL,
  t18 double NOT NULL,
  t19 double NOT NULL,
  t20 double NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB 
DEFAULT CHARSET=latin1 
AUTO_INCREMENT=1;

CREATE TABLE tSensor
(
  id int NOT NULL AUTO_INCREMENT,
  sensorNo int NOT NULL,
  sensorId varchar(15) NOT NULL,
  sensorTxt varchar(30) NOT NULL,
  PRIMARY KEY (id)
)
ENGINE = INNODB 
DEFAULT CHARSET=latin1 
AUTO_INCREMENT=1;

INSERT INTO tSensor (sensorNo, sensorId, sensorTxt) 
VALUES 
('1','28-000008a326e5','Arrivee PAC'),
('2','28-000008a10cf1','Entree Accu'),
('3','28-000008a27bb9','Sortie Accu'),
('4','28-000008a32b37','Sur bypass'),
('5','28-000008a109bf','Depart vers maison'),
('6','28-000008a12a50','Retour depuis maison'),
('7','28-000008a11bc7','Retour apres bypass'),
('8','28-000008a11dcc','Entree chauffe eau'),
('9','28-000008a233a1','Sortie chauffe eau'),
('10','28-000008a3195f','Salon'),
('11','28-000008a1091e','Bureau'),
('12','28-000008a123a3','Exterieur'),
('13','28-000008a12739','Retour rez'),
('14','28-000008a28337','Retour 1er')
