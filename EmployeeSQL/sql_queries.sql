--Query 1: Employeed details.
SELECT e.emp_no,
       e.last_name, 
	   e.first_name,
	   e.gender,
	   s.salary
FROM employees AS e 
INNER JOIN salaries AS s
on e.emp_no = s.emp_no;

--Query 2: Employees hired in 1986.
SELECT emp_no AS "Employees Hired in 1986",
       first_name AS "First Name",
	   last_name AS "Last Name"
FROM employees
WHERE EXTRACT(year FROM hire_date) = 1986;

--Query 3: Department Manager Details.
SELECT dm.dept_no,
       d.dept_name,
	   dm.emp_no,
	   e.last_name,
	   e.first_name,
	   dm.from_date,
	   dm.to_date
FROM dept_manager AS dm
INNER JOIN departments AS d 
ON dm.dept_no = d.dept_no
INNER JOIN employees AS e 
ON dm.emp_no = e.emp_no;

--Query 4: Employee Departments.
SELECT e.emp_no,
       e.last_name,
	   e.first_name,
	   d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
INNER JOIN departments AS d 
ON de.dept_no = d.dept_no;

--Query 5: Employees with first name "Hercules" and last name beginning with "B".
SELECT last_name,first_name
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

--Query 6: Employees in Sales Department.

SELECT e.emp_no,
       e.last_name,
	   e.first_name,
	   d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
INNER JOIN departments AS d 
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--Query 7: Employees in Sales & Development.
SELECT e.emp_no,
       e.last_name,
	   e.first_name,
	   d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de 
ON e.emp_no = de.emp_no
INNER JOIN departments AS d 
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--Query 8: Frequency count of employee last names.
SELECT last_name,
       COUNT(last_name) AS "Frequency of Names"
FROM employees
GROUP BY last_name
ORDER BY "Frequency of Names" DESC;