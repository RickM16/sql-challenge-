SELECT employees.emp_no AS Employee_Number, employees.last_name, employees.first_name, employees.sex, salaries.salary
	FROM employees
	JOIN salaries ON employees.emp_no = salaries.emp_no
	ORDER BY employees.emp_no 
	
	SELECT employees.first_name, employees.last_name, employees.hire_date
	FROM employees
	WHERE employees.hire_date > '1986-1-1'::date AND employees.hire_date < '1987-1-1'::date
	
	SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
	FROM dept_manager
	JOIN employees 
	ON dept_manager.emp_no = employees.emp_no
	JOIN departments 
	ON dept_manager.dept_no = departments.dept_no
	
		SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employees
	JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
	JOIN departments 
	ON dept_emp.dept_no = departments.dept_no
	
	SELECT employees.first_name, employees.last_name, employees.sex
	FROM employees
	WHERE first_name = 'Hercules' AND last_name LIKE 'B%' 
	
	SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employees
	JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
	JOIN departments 
	ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales' 
	
	SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
	FROM employees
	JOIN dept_emp 
	ON employees.emp_no = dept_emp.emp_no
	JOIN departments 
	ON dept_emp.dept_no = departments.dept_no
	WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development' 
	
	SELECT employees.last_name, Count (*)
	FROM employees
	GROUP BY employees.last_name
	ORDER BY Count (*) DESC;