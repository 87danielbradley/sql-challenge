--Query 1
SELECT e.emp_no, e.last_name, e.first_name,e.gender,s.salary
FROM employees AS e INNER JOIN salaries AS s
on e.emp_no = s.emp_no;

--Query 2
SELECT hire_date AS "Employees Hired in 1985",emp_no,first_name,last_name
FROM employees
WHERE EXTRACT(year FROM hire_date) = 1985;

--Query 3
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name, dm.from_date, dm.to_date
FROM dept_manager AS dm
INNER JOIN departments AS d ON dm.dept_no = d.dept_no
INNER JOIN employees AS e ON dm.emp_no = e.emp_no;

--Query 4
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no;

--Query 5
SELECT last_name,first_name
FROM employees
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

--Query 6

SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

--Query 7
SELECT e.emp_no,e.last_name,e.first_name,d.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

--Query 8
SELECT last_name,COUNT(last_name) AS "Frequency of Names"
FROM employees
GROUP BY last_name
ORDER BY "Frequency of Names" DESC;