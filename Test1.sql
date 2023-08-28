CREATE DATABASE Test1;
USE Test1;

CREATE TABLE personalDetails(
 personal_id int identity(100,1) primary key,
 first_Name varchar(50) not null,
 last_name varchar(50) not null,
 age int not null,
 highest_qualification varchar(50) not null,
 net_worth decimal (18, 4)
);

INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Parth', 'Gurval', 22, 'BTECH', 900000000.80);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Vinayak', 'Gurval', 51, 'MBA', 92000000.75);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Seema', 'Gurval', 49, 'MBA', 86000000.70);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Vaibhavi', 'Gurval', 19, 'BTECH', 7200000.71);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Naina', 'Sachdev', 22, 'BTECH', 72000000.80);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Suraj', 'Sachdev', 52, 'MCA', 5200000.85);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Kaishma', 'Sachdev', 26, 'BDS', 59000000.80);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Anju', 'Sachdev', 50, 'MBA', 51000000.69);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Jimmy', 'Royce', 15, 'BTECH', 90000.50);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Aries', 'Royce', 20, 'M.TTECH', 105000.80);
INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Gwen', 'Stacy', 18, 'BTECH', 850000.20);

SELECT * FROM  personalDetails;

DELETE FROM personalDetails WHERE personal_id=110;

UPDATE personalDetails
SET net_worth =87000000.70, last_name = 'Sachdev'
WHERE personal_id = 103;

DELETE FROM personalDetails WHERE personal_id >=111 and personal_id<=121;

INSERT INTO personalDetails(first_Name, last_name, age, highest_qualification, net_worth) VALUES ('Seema', 'Gurval', 49, 'MBA', 86000000.70);

SELECT *
FROM personalDetails
ORDER BY last_name;