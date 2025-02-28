DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS employees CASCADE;

CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30),
  PRIMARY KEY (dept_no)
  );

CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
	birth_date DATE,
    first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(1),
    hire_date DATE,
	PRIMARY KEY (emp_no)
);

CREATE TABLE dept_emp (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  dept_no VARCHAR(30) NOT NULL,
  from_date DATE,
  to_date DATE
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(30) NOT NULL,
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  from_date DATE,
  to_date DATE
);



CREATE TABLE salaries (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  salary INTEGER,
  from_date DATE,
  to_date DATE
);

CREATE TABLE titles (
  emp_no INTEGER NOT NULL,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  title VARCHAR(30),
  from_date DATE,
  to_date DATE
);

COPY employees FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\employees.csv' DELIMITER ',' CSV HEADER;
COPY departments FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\departments.csv' DELIMITER ',' CSV HEADER;
COPY titles FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\titles.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\salaries.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'C:\Users\chand\Documents\GitHub\sql-challenge\EmployeeSQL\dept_manager.csv' DELIMITER ',' CSV HEADER;



