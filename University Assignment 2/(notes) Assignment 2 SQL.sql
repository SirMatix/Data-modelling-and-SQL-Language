----------------------------------ASSIGNMENT 2 DATABASE CODE FROM BRIEF----------------------------------------------------------------

DROP DATABASE IF EXISTS employees; 

CREATE DATABASE IF NOT EXISTS employees;

USE employees;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS dept_emp, dept_manager,titles,salaries, employees, departments;

CREATE TABLE employees ( 
	emp_no 		INT NOT NULL, 
	birth_date 	DATE NOT NULL,
	first_name 	VARCHAR(14) NOT NULL, 
	last_name 	VARCHAR(16) NOT NULL, 
	gender 		ENUM ('M','F') NOT NULL,
	hire_date 	DATE NOT NULL, 
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments( 
	dept_no 	CHAR(4) NOT NULL, 
	dept_name 	VARCHAR(40) NOT NULL, 
	PRIMARY KEY (dept_no),
	UNIQUE KEY (dept_name)
);

CREATE TABLE dept_manager ( 
	emp_no 		INT NOT NULL, 
	dept_no 	CHAR(4) NOT NULL, 
	from_date 	DATE NOT NULL,
 	to_date 	DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE, 
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE, 
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_emp ( 
	emp_no 		INT NOT NULL, 
	dept_no 	CHAR(4) NOT NULL, 
	from_date 	DATE NOT NULL, 
	to_date 	DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE, 
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE, 
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE titles ( 
	emp_no 		INT NOT NULL,
	title 		VARCHAR(50) NOT NULL,
	from_date 	DATE NOT NULL, 
	to_date 	DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE, 
	PRIMARY KEY (emp_no,title, from_date)
);

CREATE TABLE salaries ( 
	emp_no 		INT NOT NULL, 
	salary 		INT NOT NULL, 
	from_date 	DATE NOT NULL, 
	to_date 	DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE, 
	PRIMARY KEY (emp_no, from_date)
) ;


INSERT INTO `departments` VALUES ('d001','Marketing'),('d002','Finance'),
				('d003','Human Resources'), ('d004','Production'),
				('d005','Development'),('d006','Quality Management'),
				('d007','Sales'),('d008','Research'),('d009','Customer Service');

INSERT INTO `employees` VALUES (10001,'1953-09-02','Georgi','Facello','M','1986-06-26'), 
				(10002,'1964-06-02','Bezalel','Simmel','F','1985-11-21'),
				(10003,'1959-12-03','Parto','Bamford','M','1986-08-28'),
				(10004,'1954-05-01','Chirstian','Koblick','M','1986-12-01'),
				(10005,'1955-01-21','Kyoichi','Maliniak','M','1989-09-12'),
				(10006,'1953-04-20','Anneke','Preusig','F','1989-06-02'),
				(10007,'1957-05-23','Tzvetan','Zielinski','F','1989-02-10'),
				(10008,'1958-02-19','Saniya','Kalloufi','M','1994-09-15'),
				(10009,'1952-04-19','Sumant','Peac','F','1985-02-18'),
				(10010,'1963-06-01','Duangkaew','Piveteau','F','1989-08-24'),
				(10011,'1953-11-07','Mary','Sluis','F','1990-01-22'),
				(10012,'1960-10-04','Patricio','Bridgland','M','1992-12-18'),
				(10013,'1963-06-07','Eberhardt','Terkki','M','1985-10-20'),
				(10014,'1956-02-12','Berni','Genin','M','1987-03-11');

INSERT INTO `dept_emp` VALUES 	(10001,'d005','1986-06-26','9999-01-01'),
				(10002,'d007','1996-08-03','9999-01-01'),
				(10003,'d004','1995-12-03','9999-01-01'),
				(10004,'d004','1986-12-01','9999-01-01'),
				(10005,'d003','1989-09-12','9999-01-01'),
				(10006,'d005','1990-08-05','9999-01-01'),
				(10014,'d005','1993-12-29','9999-01-01');
 
INSERT INTO `dept_manager` VALUES (10013,'d001','1985-01-01','1991-10-01'), 
				(10001,'d001','1991-10-01','9999-01-01'),
				(10002,'d002','1985-01-01','1989-12-17'),
				(10008,'d002','1989-12-17','9999-01-01'),
				(10012,'d003','1985-01-01','1992-03-21'),
				(10011,'d003','1992-03-21','9999-01-01'),
				(10014,'d004','1985-01-01','1988-09-09'),
				(10003,'d004','1988-09-09','1992-08-02');

INSERT INTO `salaries` VALUES (10001,60117,'1986-06-26','1987-06-26'), 
				(10001,62102,'1987-06-26','1988-06-25'),
				(10002,66074,'1988-06-25','1989-06-25'),
				(10003,66596,'1989-06-25','1990-06-25'),
				(10004,66961,'1990-06-25','1991-06-25'),
				(10005,71046,'1991-06-25','1992-06-24'),
				(10006,74333,'1992-06-24','1993-06-24'),
				(10007,75286,'1993-06-24','1994-06-24'),
				(10008,75994,'1994-06-24','1995-06-24');

INSERT INTO titles VALUES 
            (10001,'Senior Engineer','1986-06-26','9999-01-01'),
			(10002,'Staff','1996-08-03','9999-01-01'),
            (10003,'Senior Engineer','1995-12-03','9999-01-01'),
			(10004,'Engineer','1986-12-01','1995-12-01'),
			(10004,'Senior Engineer','1995-12-01','9999-01-01'),
			(10005,'Senior Staff','1996-09-12','9999-01-01'),
			(10005,'Staff','1989-09-12','1996-09-12'),
			(10006,'Senior Engineer','1990-08-05','9999-01-01'),
			(10007,'Senior Staff','1996-02-11','9999-01-01'),
			(10007,'Staff','1989-02-10','1996-02-11'), 
			(10008,'Assistant Engineer','1998-03-11','2000-07-31');

----------------------------- MY WORK------------------------------------------------

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS dept_emp, dept_manager,titles,salaries, employees, departments;
CREATE TABLE employees ( 
	emp_no 		INT NOT NULL, 
	birth_date 	DATE NOT NULL,
	first_name 	VARCHAR(14) NOT NULL, 
	last_name 	VARCHAR(16) NOT NULL, 
	gender 		ENUM ('M','F') NOT NULL,
	hire_date 	DATE NOT NULL, 
	PRIMARY KEY (emp_no) 
);

CREATE TABLE departments( 
	dept_no 	CHAR(4) NOT NULL, 
	dept_name 	VARCHAR(40) NOT NULL, 
	PRIMARY KEY (dept_no),
	UNIQUE KEY (dept_name)
);

CREATE TABLE dept_manager ( 
	emp_no 		INT NOT NULL, 
	dept_no 	CHAR(4) NOT NULL, 
	from_date 	DATE NOT NULL,
 	to_date 	DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON UPDATE CASCADE ON DELETE CASCADE, 
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON UPDATE CASCADE ON DELETE CASCADE, 
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE dept_emp ( 
	emp_no 		INT NOT NULL, 
	dept_no 	CHAR(4) NOT NULL, 
	from_date 	DATE NOT NULL, 
	to_date 	DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON UPDATE CASCADE ON DELETE CASCADE, 
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON UPDATE CASCADE ON DELETE CASCADE, 
	PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE titles ( 
	emp_no 		INT NOT NULL,
	title 		VARCHAR(50) NOT NULL,
	from_date 	DATE NOT NULL, 
	to_date 	DATE,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON UPDATE CASCADE ON DELETE CASCADE, 
	PRIMARY KEY (emp_no,title, from_date)
);

CREATE TABLE salaries ( 
	emp_no 		INT NOT NULL, 
	salary 		INT NOT NULL, 
	from_date 	DATE NOT NULL, 
	to_date 	DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON UPDATE CASCADE ON DELETE CASCADE, 
	PRIMARY KEY (emp_no, from_date)
) ;



--------------------------------------------------------DML QUERIES---------------------------------------------------------------------

1.	Write an SQL statement to list all employees with their full names, gender and salary 

SELECT first_name, last_name, gender, salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

2.	Write an SQL statement to show the title of all employees and their department name.

SELECT employees.emp_no AS Identi, titles.title AS title, departments.dept_name AS department 
FROM employees 
JOIN titles ON employees.emp_no = titles.emp_no 
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no 
LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no 
JOIN departments ON (departments.dept_no = dept_emp.dept_no OR departments.dept_no = dept_manager.dept_no) AND (dept_emp.emp_no = employees.emp_no OR dept_manager.emp_no = employees.emp_no)

3.	Write an SQL statement to show the full names and gender who belong to department number 'd004'. DONE

SELECT first_name,last_name,gender FROM employees 
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no 
LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no 
WHERE dept_emp.dept_no = 'd004' OR dept_manager.dept_no = 'd004' 

4.	Write an SQL statement to show the all departments and their department’s managers. DONE

SELECT departments.dept_name, employees.first_name, employees.last_name 
from employees 
INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no 
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no

5.	Write an SQL statement to show a list of department’s managers who were hired after 1990

SELECT dept_name,first_name, last_name, hire_date from employees 
JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no WHERE hire_date > '1990-12-31'

6.	Write an SQL statement to change any employee’s date of birth. Assume the employee has just phoned in with his/her last name

UPDATE employees
SET birth_date = '1990-03-12'
WHERE last_name = 'Simmel'

7.	Write an SQL statement to increase salaries of all employees up to 5.5% who are working from 1997.

UPDATE salaries
JOIN employees
SET salary = salary*1.055
WHERE employees.hire_date > '1997-01-01'

8.	Write an SQL statement to delete employee’s record who belongs to department 'd004' and ID is 10003.

DELETE employees, dept_manager, dept_emp FROM employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
WHERE employees.emp_no = '10003' AND dept_manager.dept_no = 'd004' AND dept_emp.dept_no = 'd004'

9.	Create a database view to list full names of all employees their departments and salaries.

CREATE VIEW new_view AS
SELECT first_name, last_name, dept_name, salary
FROM employees
JOIN salaries ON salaries.emp_no = employees.emp_no
LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
LEFT JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON (departments.dept_no = dept_emp.dept_no OR departments.dept_no = dept_manager.dept_no)
		 AND (dept_emp.emp_no = employees.emp_no OR dept_manager.emp_no = employees.emp_no)


10.	 Create a database view to list all departments and their department’s managers, who were hired between 1990 and 2000.	

CREATE VIEW view_name AS
SELECT dept_name, first_name, last_name, hire_date from employees 
JOIN dept_manager ON employees.emp_no=dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no WHERE hire_date > '1990-01-01' AND hire_date < '2000-01-01'





-------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------DATA TESTING--------------------------------------------------------------------

1. field size TESTING

INSERT INTO employees VALUES (99999,'1964-06-02','12345678901234567890','Simmel','F','1985-11-21')

INSERT INTO employees VALUES (0,0,12345678901234567890,0,0,0)

2. null VALUES

INSERT INTO employees VALUES (null,null,null,null,null,null)
INSERT INTO departments VALUES (null, null)

INSERT INTO employees VALUES () ----> enters only empty strings not null values so it is not reliable method of testing null values
INSERT INTO departments VALUES ('', '') ----> does the same as statement above so it is not reliable

3. check constraints



ALTER TABLE employees 
ADD CHECK (birth_date > '2001-01-01');




INSERT INTO employees(emp_no,birth_date,first_name,last_name,gender,hire_date) VALUES (10111, '2015-01-01','Marian','Pazdzioch','F','2002-03-02')
INSERT INTO employees(emp_no,birth_date,first_name,last_name,gender,hire_date) VALUES (1011111, '2000-01-01','Marian','Pazdzioch','F','2002-03-02')




ALTER TABLE employees
DROP CONSTRAINT check1









4. referential integrity

UPDATE `employees` SET `emp_no` = '777' WHERE `employees`.`emp_no` = 10001






### Basic syntax for UPDATE statement

UPDATE table_name
SET column1 = value1, column2 = value2...., columnN = valueN
WHERE [condition];

### Example code for UPDATE statement

UPDATE employees
SET last_name = 'Smith'
WHERE emp_no = 10006

### This will UPDATE record in employees table
### changing last_name to 'Smith' WHERE emp_no is 10006



### Basic syntax for DELETE statement

DELETE FROM table_name
WHERE condition


### Example code for DELETE statement.

DELETE FROM employees
WHERE last_name = 'Smith' AND emp_no= 10006


### This will delete record from employees table 
### WHERE last_name is 'Smith' and emp_no is 10006




### basic GRANT statement syntax

GRANT <list of privileges>
ON <relation or other object>
TO <list of authorization ID’s>;

### If you want the recipient(s) to be able to pass the privilege(s) to others add:

WITH GRANT OPTION





### first lets create a user

CREATE USER Matt


###example GRANT statement

GRANT SELECT, UPDATE(hire_date)
ON employees
TO Matt;

### Now Matt has the right to issue any query on
### employees table and can update the hire_date component only.




###example GRANT statement

GRANT SELECT, UPDATE(hire_date)
ON employees
TO Matt
WITH GRANT OPTION;

### Now Matt has the right to issue any query on
### employees table and can update the hire_date component only.
### but also he can grant privileges







### basic REVOKE statement syntax

REVOKE <list of privileges>
ON <relation or other object>
FROM <list of authorization ID’s>;



### example REVOKE statement code

REVOKE SELECT, UPDATE(hire_date)
ON employees
FROM Matt

### now we are taking away privileges we gave to Matt
