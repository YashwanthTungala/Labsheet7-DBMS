--Creating Tables
CREATE TABLE student(
	ID varchar(4) PRIMARY KEY,
	name varchar(15),
	street varchar(15),
	city varchar(20),
	tot_credits numeric(3,0)
);
CREATE TABLE instructor(
	ID varchar(4) PRIMARY KEY,
	name varchar(15),
	street varchar(15),
	city varchar(20),
	salary int,
	rank int
);
CREATE TABLE secretary(
	ID varchar(4) PRIMARY KEY,
	name varchar(15),
	street varchar(15),
	city varchar(20),
	salary int,
	hours_per_week numeric(2,0)
);
--Inserting Details
INSERT INTO student VALUES('st01','Eswar','Clock Tower','Anantapur',55),('st02','Sumesh','Clock Tower','Anantapur',35),('st03','Greeshma','Navy Street','Vizag',50),('st04','Sukumar','Dilshuk Nagar','Hyderabad',48),('st05','Mohan','Beach Road','Vizag',52),('st06','Aboli','Beach Road','Vizag',54),('st07','Suresh','karimnagar','Hyderabad',20);
INSERT INTO instructor VALUES('in01','Sunil','Clock Tower','Anantapur',55000,1),('in02','Chitti','Clock Tower','Anantapur',59000,3),('in03','Rudra','Navy Street','Vizag',50000,4),('in04','Sukumar','Dilshuk Nagar','Hyderabad',58000,2),('in05','Kanna','Dilshuk Nagar','Hyderabad',56000,2);
INSERT INTO secretary VALUES('it01','Varma','Clock Tower','Anantapur',65000,55),('it02','Chitrush','Clock Tower','Anantapur',69000,45),('it03','Nitin','Navy Street','Vizag',75000,60),('it04','Bharath','Dilshuk Nagar','Hyderabad',70000,62);
--1
SELECT name FROM instructor UNION ALL SELECT name FROM secretary;
--2
SELECT rank,AVG(salary) FROM instructor GROUP BY rank;
