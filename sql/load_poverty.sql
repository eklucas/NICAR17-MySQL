CREATE TABLE FL_poverty (
Id VARCHAR(15),
Id2 VARCHAR(5),
Geography VARCHAR(255),
Total INT,
Total_MOE VARCHAR(255),
P_total INT,
P_total_MOE INT,
P_native INT,
P_native_MOE INT,
P_native_bornUS INT,
P_native_bornUS_MOE INT,
P_native_abroad INT,
P_native_abroad_MOE INT,
P_foreignborn INT,
P_foreignborn_MOE INT,
P_foreignborn_naturalized INT,
P_foreignborn_naturalized_MOE INT,
P_foreignborn_noncitizen INT,
P_foreignborn_noncitizen_MOE INT,
NP_total INT,
NP_total_MOE INT,
NP_native INT,
NP_native_MOE INT,
NP_native_bornUS INT,
NP_native_bornUS_MOE INT,
NP_native_abroad INT,
NP_native_abroad_MOE INT,
NP_foreignborn INT,
NP_foreignborn_MOE INT,
NP_foreignborn_naturalized INT,
NP_foreignborn_naturalized_MOE INT,
NP_foreignborn_noncitizen INT,
NP_foreignborn_noncitizen_MOE INT
) ENGINE=MYISAM;

LOAD DATA LOCAL INFILE 'H:\\NICAR17\\MySQL\\FL_poverty.csv'
INTO TABLE FL_poverty
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
ESCAPED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 2 LINES;