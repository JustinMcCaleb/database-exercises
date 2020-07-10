USE employees;

# 2 -- Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager' FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date LIKE '9999%'
ORDER BY dept_name;

# 3 -- Find the name of all departments currently managed by women.
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Manager Name' FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date LIKE '9999%'
AND employees.gender = 'f'
ORDER BY dept_name;

# 4 -- Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS Title, COUNT(dept_emp.emp_no) AS Count
FROM departments
JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
JOIN titles ON titles.emp_no = dept_emp.emp_no
WHERE departments.dept_name = 'Customer Service'
AND titles.to_date = '9999-01-01'
AND dept_emp.to_date = '9999-01-01'
GROUP BY titles.title;

# 5 -- Find the current salary of all current managers
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Name', salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date LIKE '9999%'
AND salaries.to_date LIKE '9999%'
ORDER BY dept_name;