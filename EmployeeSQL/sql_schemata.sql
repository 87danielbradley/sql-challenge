DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;


CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL
  );

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  dept_no VARCHAR(30) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(30) NOT NULL,
  emp_no INTEGER NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
	birth_date DATE NOT NULL,
    first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1) NOT NULL,
    hire_date DATE NOT NULL
);

CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  salary INTEGER NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

CREATE TABLE titles (
  emp_no INTEGER NOT NULL,
  title VARCHAR(30) NOT NULL,
  from_date DATE NOT NULL,
  to_date DATE NOT NULL
);

COPY titles FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\titles.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\employees.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\salaries.csv' DELIMITER ',' CSV HEADER;
COPY departments FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\departments.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\dept_manager.csv' DELIMITER ',' CSV HEADER;



