create table departments (
	dept_no varchar,
	dept_name varchar
	);
	
create table  dept_emp (
	emp_no INT,
	dept_no varchar
	);

create table dept_manager (
	dept_no varchar,
	emp_no INT
	);
	
CREATE TABLE employees (
	emp_no INT,
	emp_title VARCHAR,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date DATE
);

CREATE TABLE salaries (
	emp_no INT,
	salary INT				  
);

CREATE TABLE titles (
	title_id VARCHAR,
	title VARCHAR
);
SELECT *
from departments ;