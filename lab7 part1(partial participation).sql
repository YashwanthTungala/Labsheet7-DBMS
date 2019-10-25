CREATE TABLE person(
	ID varchar(4) PRIMARY KEY,
	name varchar(15),
	street varchar(15),
	city varchar(20)
);
CREATE TABLE employee(
	ID varchar(4) PRIMARY KEY,
	salary numeric(6,2),
	FOREIGN KEY (ID) REFERENCES person(ID)
);
CREATE TABLE student(
	ID varchar(4) PRIMARY KEY,
	tot_credits numeric(3,0),
	FOREIGN KEY (ID) REFERENCES person(ID)
);
CREATE TABLE instructor(
	ID varchar(4) PRIMARY KEY,
	salary numeric(6,2),
	rank numeric(2,0),
	FOREIGN KEY (ID) REFERENCES person(ID)
);
CREATE TABLE secretary(
	ID varchar(4) PRIMARY KEY,
	salary numeric(6,2),
	hours_per_week numeric(2,0),
	FOREIGN KEY (ID) REFERENCES person(ID)
);
