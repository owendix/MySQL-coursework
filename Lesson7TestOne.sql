use mysql;
create database testone;
use testone;
create table cars (manufacturer_id INT UNSIGNED NOT NULL, manufacturer char(20), model char(20), color 

char(20), wheel_base int(3), engine char(10), seats_how_many int(2), axles int(2), date_manufactured date, 

price int(5),
PRIMARY KEY CarsPKIdx (manufacturer_id)
);

insert into cars values (12346, 'Mitsubishi', 'Galant', 'White', 78, '4cl', 5, 2, '2005-8-1', 22000);
insert into cars values (12347, 'Honda', 'Accord', 'Green', 72, '4cl', 5, 2, '2008-2-2', 23000);
insert into cars values (12348, 'Chevrolet', 'Corvette', 'Red', 74, '8cl', 2, 2, '2009-3-22', 24000);
insert into cars values (12349,'Buick',	'Skylark','Brown',72, '6cl', 6,	2, '2008-11-22', 25000);
insert into cars values (12350,'Saturn','Skye', 'Silver', 68, '4cl', 2,	2,'2009-1-1', 26000);
insert into cars values (12351,'Volkswagon', 'Bug', 'Blue', 70, '4cl',4, 2, '2008-5-22', 27000);
insert into cars values (12352, 'Ford', 'Mustang', 'Yellow',70, '8cl',4,2, '2008-4-12', 28000);

create table customers 
(cust_id	INT UNSIGNED NOT NULL,
fname	char(20),
lname	char(20),
street	char(30),
city	char(20),
state	char(2),
zip	int(5),
phone	int(10),
email	char(40),
cars_id  int unsigned not null,
PRIMARY KEY CustomersPKIdx (cust_id),
FOREIGN KEY CustomersFKIdxCars (cars_id) REFERENCES cars (manufacturer_id)
);


insert into customers values (001, 'mike','maguire', null, null, null, null, 5551111, null, 12346);
insert into customers values (002, 'randy', 'larson', null, null, null, null, 5551212, null, 12347);
insert into customers values (003, 'peter', 'piper', null, null, null, null, 5551313, null, 12348);
insert into customers values (004, 'tom', 'thumb', null, null, null, null, 5551414, null, 12349);
insert into customers values (005, 'miss', 'muffet', null, null, null, null, 5551515, null, 12350);