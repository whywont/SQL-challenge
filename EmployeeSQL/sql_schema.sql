DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(50),
	PRIMARY KEY (title_id)
);

CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	sex VARCHAR(1),
	hire_date DATE,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(10),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
);

CREATE TABLE dept_emp (
	emp_no INT REFERENCES employees(emp_no),
    dept_no VARCHAR(5) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
	emp_no INT REFERENCES employees(emp_no),
	salary INT
);


CREATE TABLE dept_manager (
	dept_no VARCHAR(5) REFERENCES departments(dept_no),
	emp_no INT REFERENCES employees(emp_no)
);
