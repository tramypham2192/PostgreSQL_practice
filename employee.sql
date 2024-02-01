-- CREATE TABLE employee (
--   employee_id SERIAL PRIMARY KEY,
--   last_name VARCHAR(20),
--   first_name VARCHAR(20),
--   title VARCHAR(30),
--   reports_to INTEGER REFERENCES employee(employee_id),
--   birth_date TIMESTAMP,
--   hire_date TIMESTAMP,
--   address VARCHAR(70),
--   city VARCHAR(40),
--   state VARCHAR(40),
--   country VARCHAR(40),
--   postal_code VARCHAR(10),
--   phone VARCHAR(24),
--   fax VARCHAR(24),
--   email VARCHAR(60)
-- );

-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('Adams','Andrew','General Manager',NULL,'1962-02-18 00:00:00','2002-08-14 00:00:00','11120 Jasper Ave NW','Edmonton','AB','Canada','T5K 2N1','+1 (780) 428-9482','+1 (780) 428-3457','andrew@chinookcorp.com');
-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('Edwards','Nancy','Sales Manager',1,'1958-12-08 00:00:00','2002-05-01 00:00:00','825 8 Ave SW','Calgary','AB','Canada','T2P 2T3','+1 (403) 262-3443','+1 (403) 262-3322','nancy@chinookcorp.com');
-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('Peacock','Jane','Sales Support Agent',2,'1973-08-29 00:00:00','2002-04-01 00:00:00','1111 6 Ave SW','Calgary','AB','Canada','T2P 5M5','+1 (403) 262-3443','+1 (403) 262-6712','jane@chinookcorp.com');
-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('Park','Margaret','Sales Support Agent',2,'1947-09-19 00:00:00','2003-05-03 00:00:00','683 10 Street SW','Calgary','AB','Canada','T2P 5G3','+1 (403) 263-4423','+1 (403) 263-4289','margaret@chinookcorp.com');
-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('Johnson','Steve','Sales Support Agent',2,'1965-03-03 00:00:00','2003-10-17 00:00:00','7727B 41 Ave','Calgary','AB','Canada','T3B 1Y7','1 (780) 836-9987','1 (780) 836-9543','steve@chinookcorp.com');
-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('Mitchell','Michael','IT Manager',1,'1973-07-01 00:00:00','2003-10-17 00:00:00','5827 Bowness Road NW','Calgary','AB','Canada','T3B 0C5','+1 (403) 246-9887','+1 (403) 246-9899','michael@chinookcorp.com');
-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('King','Robert','IT Staff',6,'1970-05-29 00:00:00','2004-01-02 00:00:00','590 Columbia Boulevard West','Lethbridge','AB','Canada','T1K 5N8','+1 (403) 456-9986','+1 (403) 456-8485','robert@chinookcorp.com');
-- INSERT INTO employee (last_name, first_name, title, reports_to, birth_date, hire_date, address, city, state, country, postal_code, phone, fax, email) VALUES('Callahan','Laura','IT Staff',6,'1968-01-09 00:00:00','2004-03-04 00:00:00','923 7 ST NW','Lethbridge','AB','Canada','T1H 1Y8','+1 (403) 467-3351','+1 (403) 467-8772','laura@chinookcorp.com');


-- List the first and last names of all employees that live in Calgary.
select first_name, last_name 
from employee
where city = 'Calgary';

-- Find the birthdate for the youngest employee.
select birth_date from employee
where (date_part('year', birth_date)) =
 (select max(date_part('year', birth_date)) from employee);

-- Find the birthdate for the oldest employee.
select birth_date from employee
where (date_part('year', birth_date)) = 
	(select min(date_part('year', birth_date)) from employee);
	
-- Find everyone that reports to Nancy Edwards (find Nancy Edwards’ employee_id, then look for employees who have that id in their reports_to field).
select * from employee
where reports_to = 
	(
		select employee_id 
		from employee
		where first_name = 'Nancy' and last_name = 'Edwards'
	);

-- Count how many people live in Lethbridge.
select count(*)
from employee
where city = 'Lethbridge';

-- select * from employee;


