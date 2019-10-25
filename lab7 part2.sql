--1,2
CREATE TABLE Employee(
	Fname varchar(10) NOT NULL,
	Minit varchar(1),
	Lname varchar(10),
	SSN varchar(9) PRIMARY KEY,
	BDate date,
	Address varchar(50),
	Sex varchar(1),
	Salary int,
	SuperSSN varchar(9) REFERENCES Employee(SSN),
	DepNo numeric(1,0)
);
CREATE TABLE Department(
	DName varchar(15) UNIQUE,
	DepNo numeric(1,0) PRIMARY KEY,
	MgrSSN varchar(9) REFERENCES Employee(SSN) ON DELETE SET NULL,
	MgrSDate date
);
CREATE TABLE Dept_Locations(
	DepNo numeric(1,0) NOT NULL,
	DLocation varchar(15),
	PRIMARY KEY(DepNo,DLocation),
	FOREIGN KEY(DepNo) REFERENCES Department(DepNo)
);
CREATE TABLE Project(
	PName varchar(17) UNIQUE,
	PNumber numeric(2,0) PRIMARY KEY,
	PLocation varchar(15),
	DepNo numeric(1,0) REFERENCES Department(DepNo)
);
CREATE TABLE Works_On(
	EESN varchar(9),
	PNo numeric(2,0),
	Hours numeric(2,0),
	PRIMARY KEY(EESN,PNo),
	FOREIGN KEY (EESN) REFERENCES Employee(SSN),
	FOREIGN KEY (PNo) REFERENCES Project(PNumber)
);
CREATE TABLE Dependent(
	EESN varchar(9) REFERENCES Employee(SSN),
	Dependent_Name varchar(15),
	Sex varchar(1),
	BDate date,
	Relationship varchar(15),
	PRIMARY KEY (EESN,Dependent_Name)
);
ALTER TABLE Employee ADD FOREIGN KEY(DepNo) REFERENCES Department(DepNo);
--3
INSERT INTO Employee VALUES 
  ('James','E','Borg','888665555','10-NOV-27','450 Stone, Houston, TX','M',55000,null,null);
INSERT INTO Employee VALUES
  ('Franklin','T','Wong','333445555','08-DEC-45','638 Voss, Houston, TX','M',40000,'888665555',null);
INSERT INTO Employee VALUES
  ('Jennifer','S','Wallace','987654321','20-JUN-31','291 Berry, Bellaire, TX','F',43000,'888665555',null);
INSERT INTO Employee VALUES
  ('Jared','D','James','111111100','10-OCT-1966','123 Peachtree, Atlanta, GA','M',85000,null,null);
INSERT INTO Employee VALUES
  ('Alex','D','Freed','444444400','09-OCT-1950','4333 Pillsbury, Milwaukee, WI','M',89000,null,null);
INSERT INTO Employee VALUES
  ('John','C','James','555555500','30-JUN-1975','7676 Bloomington, Sacramento, CA','M',81000,null,null);
--
INSERT INTO department VALUES('Research',5,'333445555','21-MAY-78');
INSERT INTO department VALUES ('Administration', 4, '987654321', '01-JAN-85');
INSERT INTO department VALUES ('Headquarters', 1, '888665555', '19-JUN-71');
INSERT INTO department VALUES ('Software',6,'111111100','15-MAY-1999');
INSERT INTO department VALUES ('Hardware',7,'444444400','15-MAY-1998');
INSERT INTO department VALUES ('Sales',8,'555555500','01-JAN-1997');
--
UPDATE employee SET DepNo = 5 WHERE SSN = '333445555';
UPDATE employee SET DepNo = 4 WHERE SSN = '987654321';
UPDATE employee SET DepNo = 1 WHERE SSN = '888665555';
UPDATE employee SET DepNo = 6 WHERE SSN = '111111100';
UPDATE employee SET DepNo = 7 WHERE SSN = '444444400';
UPDATE employee SET DepNo = 6 WHERE SSN = '555555500';
--
INSERT INTO Employee VALUES 
  ('John','B','Smith','123456789','09-Jan-55','731 Fondren, Houston, TX','M',30000,'333445555',5);
INSERT INTO Employee VALUES 
  ('Alicia','J','Zelaya','999887777','19-JUL-58','3321 Castle, Spring, TX','F',25000,'987654321',4);
INSERT INTO Employee VALUES 
  ('Ramesh','K','Narayan','666884444','15-SEP-52','971 Fire Oak, Humble, TX','M',38000,'333445555',5);
INSERT INTO Employee VALUES 
  ('Joyce','A','English','453453453','31-JUL-62','5631 Rice Oak, Houston, TX','F',25000,'333445555',5);
INSERT INTO Employee VALUES 
  ('Ahmad','V','Jabbar','987987987','29-MAR-59','980 Dallas, Houston, TX','M',25000,'987654321',4);
INSERT INTO Employee VALUES
  ('Jon','C','Jones','111111101','14-NOV-1967','111 Allgood, Atlanta, GA','M',45000,'111111100',6);
INSERT INTO Employee VALUES
  ('Justin',null,'Mark','111111102','12-JAN-1966','2342 May, Atlanta, GA','M',40000,'111111100',6);
INSERT INTO Employee VALUES
  ('Brad','C','Knight','111111103','13-FEB-1968','176 Main St., Atlanta, GA','M',44000,'111111100',6);
INSERT INTO Employee VALUES
  ('Evan','E','Wallis','222222200','16-JAN-1958','134 Pelham, Milwaukee, WI','M',92000,null,7);
insert into Employee values
  ('Josh','U','Zell','222222201','22-MAY-1954','266 McGrady, Milwaukee, WI','M',56000,'222222200',7);
insert into EMPLOYEE values
  ('Andy','C','Vile','222222202','21-JUN-1944','1967 Jordan, Milwaukee, WI','M',53000,'222222200',7);
insert into EMPLOYEE values
  ('Tom','G','Brand','222222203','16-DEC-1966','112 Third St, Milwaukee, WI','M',62500,'222222200',7);
insert into EMPLOYEE values
  ('Jenny','F','Vos','222222204','11-NOV-1967','263 Mayberry, Milwaukee, WI','F',61000,'222222201',7);
insert into EMPLOYEE values
  ('Chris','A','Carter','222222205','21-MAR-1960','565 Jordan, Milwaukee, WI','F',43000,'222222201',7);
insert into EMPLOYEE values
  ('Kim','C','Grace','333333300','23-OCT-1970','6677 Mills Ave, Sacramento, CA','F',79000,null,6);
insert into EMPLOYEE values
  ('Jeff','H','Chase','333333301','07-JAN-1970','145 Bradbury, Sacramento, CA','M',44000,'333333300',6);
INSERT INTO EMPLOYEE VALUES
  ('Bonnie','S','Bays','444444401','19-JUN-1956','111 Hollow, Milwaukee, WI','F',70000,'444444400',7);
INSERT INTO EMPLOYEE VALUES
  ('Alec','C','Best','444444402','18-JUN-1966','233 Solid, Milwaukee, WI','M',60000,'444444400',7);
INSERT INTO EMPLOYEE VALUES
  ('Sam','S','Snedden','444444403','31-JUL-1977','987 Windy St, Milwaukee, WI','M',48000,'444444400',7);
INSERT INTO EMPLOYEE VALUES
  ('Nandita','K','Ball','555555501','16-APR-1969','222 Howard, Sacramento, CA','M',62000,'555555500',6);
INSERT INTO EMPLOYEE VALUES
  ('Bob','B','Bender','666666600','17-APR-1968','8794 Garfield, Chicago, IL','M',96000,null,8);
INSERT INTO EMPLOYEE VALUES
  ('Jill','J','Jarvis','666666601','14-JAN-1966','6234 Lincoln, Chicago, IL','F',36000,'666666600',8);
INSERT INTO EMPLOYEE VALUES
  ('Kate','W','King','666666602','16-APR-1966','1976 Boone Trace, Chicago, IL','F',44000,'666666600',8);
INSERT INTO EMPLOYEE VALUES
  ('Lyle','G','Leslie','666666603','09-JUN-1963','417 Hancock Ave, Chicago, IL','M',41000,'666666601',8);
INSERT INTO EMPLOYEE VALUES
  ('Billie','J','King','666666604','01-JAN-1960','556 Washington, Chicago, IL','F',38000,'666666603',8);
INSERT INTO EMPLOYEE VALUES
  ('Jon','A','Kramer','666666605','22-AUG-1964','1988 Windy Creek, Seattle, WA','M',41500,'666666603',8);
INSERT INTO EMPLOYEE VALUES
  ('Ray','H','King','666666606','16-AUG-1949','213 Delk Road, Seattle, WA','M',44500,'666666604',8);
INSERT INTO EMPLOYEE VALUES
  ('Gerald','D','Small','666666607','15-MAY-1962','122 Ball Street, Dallas, TX','M',29000,'666666602',8);
INSERT INTO EMPLOYEE VALUES
  ('Arnold','A','Head','666666608','19-MAY-1967','233 Spring St, Dallas, TX','M',33000,'666666602',8);
INSERT INTO EMPLOYEE VALUES
  ('Helga','C','Pataki','666666609','11-MAR-1969','101 Holyoke St, Dallas, TX','F',32000,'666666602',8);
INSERT INTO EMPLOYEE VALUES
  ('Naveen','B','Drew','666666610','23-MAY-1970','198 Elm St, Philadelphia, PA','M',34000,'666666607',8);
INSERT INTO EMPLOYEE VALUES
  ('Carl','E','Reedy','666666611','21-JUN-1977','213 Ball St, Philadelphia, PA','M',32000,'666666610',8);
INSERT INTO EMPLOYEE VALUES
  ('Sammy','G','Hall','666666612','11-JAN-1970','433 Main Street, Miami, FL','M',37000,'666666611',8);
INSERT INTO EMPLOYEE VALUES
  ('Red','A','Bacher','666666613','21-MAY-1980','196 Elm Street, Miami, FL','M',33500,'666666612',8);
--
INSERT INTO project VALUES ('ProductX',1,'Bellaire',5);
INSERT INTO project VALUES ('ProductY',2,'Sugarland',5);
INSERT INTO project VALUES ('ProductZ',3,'Houston',5);
INSERT INTO project VALUES ('Computerization',10,'Stafford',4);
INSERT INTO project VALUES ('Reorganization',20,'Houston',1);
INSERT INTO project VALUES ('Newbenefits',30,'Stafford',4);
INSERT INTO project VALUES ('OperatingSystems',61,'Jacksonville',6);
INSERT INTO project VALUES ('DatabaseSystems',62,'Birmingham',6);
INSERT INTO project VALUES ('Middleware',63,'Jackson',6);
INSERT INTO project VALUES ('InkjetPrinters',91,'Phoenix',7);
INSERT INTO project VALUES ('LaserPrinters',92,'LasVegas',7);
--
INSERT INTO dept_locations VALUES (1,'Houston');
INSERT INTO dept_locations VALUES (4,'Stafford');
INSERT INTO dept_locations VALUES (5,'Bellaire');
INSERT INTO dept_locations VALUES (5,'Sugarland');
INSERT INTO dept_locations VALUES (5,'Houston');
INSERT INTO dept_locations VALUES (6,'Atlanta');
INSERT INTO dept_locations VALUES (6,'Sacramento');
INSERT INTO dept_locations VALUES (7,'Milwaukee');
INSERT INTO dept_locations VALUES (8,'Chicago');
INSERT INTO dept_locations VALUES (8,'Dallas');
INSERT INTO dept_locations VALUES (8,'Philadephia');
INSERT INTO dept_locations VALUES (8,'Seattle');
INSERT INTO dept_locations VALUES (8,'Miami');
--
INSERT INTO dependent VALUES ('333445555','Alice','F','05-APR-76','Daughter');
INSERT INTO dependent VALUES ('333445555','Theodore','M','25-OCT-73','Son');
INSERT INTO dependent VALUES ('333445555','Joy','F','03-MAY-48','Spouse');
INSERT INTO dependent VALUES ('987654321','Abner','M','29-FEB-32','Spouse');
INSERT INTO dependent VALUES ('123456789','Michael','M','01-JAN-78','Son');
INSERT INTO dependent VALUES ('123456789','Alice','F', '31-DEC-78','Daughter');
INSERT INTO dependent VALUES ('123456789','Elizabeth','F','05-MAY-57','Spouse');
INSERT INTO dependent VALUES ('444444400','Johnny','M','04-APR-1997','Son');
INSERT INTO dependent VALUES ('444444400','Tommy','M','07-JUN-1999','Son');
INSERT INTO dependent VALUES ('444444401','Chris','M','19-APR-1969','Spouse');
INSERT INTO dependent VALUES ('444444402','Sam','M','14-FEB-1964','Spouse');
--
INSERT INTO works_on VALUES ('123456789',1, 32.5);
INSERT INTO works_on VALUES ('123456789',2,  7.5);
INSERT INTO works_on VALUES ('666884444',3, 40.0);
INSERT INTO works_on VALUES ('453453453',1, 20.0);
INSERT INTO works_on VALUES ('453453453',2, 20.0);
INSERT INTO works_on VALUES ('333445555',2, 10.0);
INSERT INTO works_on VALUES ('333445555',3, 10.0);
INSERT INTO works_on VALUES ('333445555',10,10.0);
INSERT INTO works_on VALUES ('333445555',20,10.0);
INSERT INTO works_on VALUES ('999887777',30,30.0);
INSERT INTO works_on VALUES ('999887777',10,10.0);
INSERT INTO works_on VALUES ('987987987',10,35.0);
INSERT INTO works_on VALUES ('987987987',30, 5.0);
INSERT INTO works_on VALUES ('987654321',30,20.0);
INSERT INTO works_on VALUES ('987654321',20,15.0);
INSERT INTO works_on VALUES ('888665555',20,null);
INSERT INTO works_on VALUES ('111111100',61,40.0);
INSERT INTO works_on VALUES ('111111101',61,40.0);
INSERT INTO works_on VALUES ('111111102',61,40.0);
INSERT INTO works_on VALUES ('111111103',61,40.0);
INSERT INTO works_on VALUES ('222222200',62,40.0);
INSERT INTO works_on VALUES ('222222201',62,48.0);
INSERT INTO works_on VALUES ('222222202',62,40.0);
INSERT INTO works_on VALUES ('222222203',62,40.0);
INSERT INTO works_on VALUES ('222222204',62,40.0);
INSERT INTO works_on VALUES ('222222205',62,40.0);
INSERT INTO works_on VALUES ('333333300',63,40.0);
INSERT INTO works_on VALUES ('333333301',63,46.0);
INSERT INTO works_on VALUES ('444444400',91,40.0);
INSERT INTO works_on VALUES ('444444401',91,40.0);
INSERT INTO works_on VALUES ('444444402',91,40.0);
INSERT INTO works_on VALUES ('444444403',91,40.0);
INSERT INTO works_on VALUES ('555555500',92,40.0);
INSERT INTO works_on VALUES ('555555501',92,44.0);
INSERT INTO works_on VALUES ('666666601',91,40.0);
INSERT INTO works_on VALUES ('666666603',91,40.0);
INSERT INTO works_on VALUES ('666666604',91,40.0);
INSERT INTO works_on VALUES ('666666605',92,40.0);
INSERT INTO works_on VALUES ('666666606',91,40.0);
INSERT INTO works_on VALUES ('666666607',61,40.0);
INSERT INTO works_on VALUES ('666666608',62,40.0);
INSERT INTO works_on VALUES ('666666609',63,40.0);
INSERT INTO works_on VALUES ('666666610',61,40.0);
INSERT INTO works_on VALUES ('666666611',61,40.0);
INSERT INTO works_on VALUES ('666666612',61,40.0);
INSERT INTO works_on VALUES ('666666613',61,30.0);
INSERT INTO works_on VALUES ('666666613',62,10.0);
--4
SELECT DName,MIN(salary) AS min_salary FROM Department NATURAL JOIN Employee GROUP BY Department.DepNo;
--5
SELECT DName,AVG(salary) AS avg_salary_above_40000 FROM Department NATURAL JOIN Employee GROUP BY Department.DepNo HAVING AVG(salary)>40000;
--6
SELECT COUNT(SSN) AS employees_in_dep6 FROM Employee WHERE DepNo=6;
--7
SELECT DepNo,COUNT(SSN) AS employees_in_department FROM Employee WHERE FName LIKE 'J%' GROUP BY DepNo;
--8
SELECT DepNo,COUNT(PNumber) AS no_of_projects FROM Project GROUP BY DepNo;
--9
ALTER TABLE Department ADD COLUMN budget numeric(6,0);
UPDATE Department SET budget=300000 WHERE DepNo=5;
UPDATE Department SET budget=100000 WHERE DepNo=4;
UPDATE Department SET budget=900000 WHERE DepNo=1;
UPDATE Department SET budget=300000 WHERE DepNo=6;
UPDATE Department SET budget=100000 WHERE DepNo=8;
UPDATE Department SET budget=100000 WHERE DepNo=7;
--10
SELECT CONCAT(t.Fname,' ',t.LName) AS emp_name,CONCAT(s.Fname,' ',s.LName) AS supervisor_name FROM Employee t,Employee s WHERE t.superSSN=s.SSN;
--11
SELECT CONCAT(s.Fname,' ',s.LName) AS emp_name,s.salary FROM Employee s,Employee t WHERE s.salary > t.salary AND t.DepNo=5 GROUP BY s.SSN;
--or
SELECT CONCAT(Fname,' ',LName) AS emp_name,salary FROM Employee WHERE salary > (SELECT MIN(salary) FROM Employee WHERE DepNo=5);
--or
SELECT CONCAT(Fname,' ',LName) AS emp_name,salary FROM Employee WHERE salary >SOME (SELECT salary FROM Employee WHERE DepNo=5);
--Sub-Queries
--12
SELECT CONCAT(Fname,' ',LName) AS emp_name FROM Employee WHERE BDate < (SELECT BDate FROM Employee LIMIT 1 OFFSET 4);
--13check
SELECT CONCAT(Fname,' ',Lname) AS emp_name FROM Employee WHERE salary IN (SELECT MAX(salary) FROM Employee GROUP BY DepNo);
--14check
SELECT CONCAT(Fname,' ',Lname) AS emp_name,address FROM Employee WHERE salary IN (SELECT MAX(salary) FROM Employee GROUP BY DepNo);
--15d
SELECT DName FROM Department NATURAL JOIN Employee WHERE salary IN (SELECT MAX(salary) FROM Employee);
--16check
SELECT CONCAT(Fname,' ',Lname) AS emp_name FROM Employee WHERE salary > (SELECT salary FROM Employee LIMIT 1 OFFSET 4);
--17
SELECT CONCAT(Fname,' ',Lname) AS emp_name FROM Employee NATURAL JOIN Department WHERE budget>200000;
--18
SELECT CONCAT(Fname,' ',Lname) AS emp_name FROM Employee NATURAL JOIN Department WHERE budget IN (SELECT MAX(budget) FROM Department);
--19d
SELECT budget FROM Department JOIN Employee USING(DepNo) WHERE salary IN (SELECT MAX(salary) FROM Employee);
--20check
SELECT CONCAT(Fname,' ',Lname) AS emp_name FROM Employee WHERE BDate IN (SELECT BDate FROM Employee LIMIT 1 OFFSET 4) AND salary > (SELECT salary FROM Employee LIMIT 1 OFFSET 4);
--21check
SELECT PName FROM Project NATURAL JOIN Employee WHERE FName = 'James';
--22

--23d
DELETE FROM Employee WHERE salary<(SELECT AVG(salary) FROM Employee);
--24d
UPDATE Employee SET salary = salary + 20000 WHERE salary > 9000 AND depname='HR';










