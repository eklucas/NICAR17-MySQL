CREATE TABLE FL_nativity (
Id VARCHAR(15),
Id2 VARCHAR(5),
Geography VARCHAR(255),
Total INT,
Total_MOE VARCHAR(255),
Native INT,
Native_MOE INT,
PuertoOrIslands INT,
PuertoOrIslands_MOE INT,
BornAbroad INT,
BornAbroad_MOE INT,
Naturalized INT,
Naturalized_MOE INT,
Noncitizen INT,
Noncitizen_MOE INT)
ENGINE = MYISAM;

LOAD DATA LOCAL INFILE 'H:\\NICAR17\\MySQL\\FL_nativity.csv'
INTO TABLE FL_nativity
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 2 LINES;


