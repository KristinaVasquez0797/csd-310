-- This is the table for Suppliers 
CREATE TABLE Suppliers (
supplier_id INT AUTO_INCREMENT PRIMARY KEY not null,
name VARCHAR (100)not null, 
product VARCHAR (100)not null,
delivery_schedule VARCHAR (500) not null
);

-- Only 3 suppliers for now since that is what was outlined in the case study.
INSERT INTO Suppliers (name, product, delivery_schedule) VALUES ("Put a Cork In It!","bottles,corks","Sparkling schedule - delivery on the first Wednesday of the month");
INSERT INTO Suppliers (name, product, delivery_schedule) VALUES ("Boxer INC","labels, boxes","Vinigar schedule - delivery on the second Monday of the month");
INSERT INTO Suppliers (name, product, delivery_schedule) VALUES ("Vat's All Folks!","vats, tubing ","Noir schedule - delivery on the first Friday of the month");

-- This is the table for Distributors
CREATE TABLE Distributors (
distributor_id INT AUTO_INCREMENT PRIMARY KEY not null, -- Distributor ids will be 1 -6 for the time being
name VARCHAR (100) not null, 
location VARCHAR (2000) not null,
online_ordering VARCHAR (3) not null -- online ordering is a yes or no string sine the owners mentioned they would like to have online orders in the future
);

INSERT INTO Distributors (name, location, online_ordering) VALUES ("Wine-ona Ryder","200 s Watts Street, Charleston, South Carolina, 29492","yes");
INSERT INTO Distributors (name, location, online_ordering) VALUES ("Wines of the Round Table","1900 Thorn Street, Denver, Colorado, 80206","yes");
INSERT INTO Distributors (name, location, online_ordering) VALUES ("The Breathing Room","805 Winter Way, San Fancisco, California, 94110","no");
INSERT INTO Distributors (name, location, online_ordering) VALUES ("Noir Knights","509 Goa Way, Saint Charles, Missouri, 63303","yes");
INSERT INTO Distributors (name, location, online_ordering) VALUES ("The Grape Garden","7650 Castel Road, Kelso, Washington, 98626","no");
INSERT INTO Distributors (name, location, online_ordering) VALUES ("Gamers and Grigios","1900 W Magnolia Street, Fort Collins, Colorado, 80521","yes");

CREATE TABLE Employees (
employee_id INT AUTO_INCREMENT PRIMARY KEY not null, -- Employee ID will be auto genorated however, the first ID is hard coded so it will auto generate from there
name VARCHAR (100) not null, 
role VARCHAR (2000) not null,
hours_worked int not null, --  hours worked is based on a regular time sheet. 
quarter VARCHAR (2) not null -- Q1 is the current quarter
);

INSERT INTO Employees (employee_id, name, role, hours_worked, quarter) VALUES (100110, "Janet Collins","Finances and Payroll Department Head",40,"Q1");
INSERT INTO Employees (name, role, hours_worked, quarter) VALUES ("Roz Murphy","Marketing Department Head",40,"Q1");
INSERT INTO Employees (name, role, hours_worked, quarter) VALUES ("Bob Ulrich","Marketing Assistant",40,"Q1");
INSERT INTO Employees (name, role, hours_worked, quarter) VALUES ("Henry Doyle","Production Line Manager",40,"Q1");
INSERT INTO Employees (name, role, hours_worked, quarter) VALUES ("Maria Costanza","Distribution Department Head",40,"Q1");
INSERT INTO Employees (name, role, hours_worked, quarter) VALUES ("Stella Rose","Production Line Employee",40,"Q1");