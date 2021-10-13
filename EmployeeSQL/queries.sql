--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-12'
--ORDER BY hire_date DESC

--List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments
	ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees
	ON dept_manager.emp_no = employees.emp_no;
	
--List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
	ON dept_emp.emp_no = employees.emp_no
JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


SELECT last_name, COUNT(last_name)AS FREQUENCY 
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
