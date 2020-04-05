--Query 1
SELECT e.emp_no, e.last_name, e.first_name,e.gender,s.salary
FROM employees AS e INNER JOIN salaries AS s
on e.emp_no = s.emp_no;

--Query 2
