-- Salary by Employee
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        sal.salary
FROM employees as emp
LEFT JOIN salaries as sal
ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

-- Employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Department managers
SELECT
	d.dept_no AS department_number,
	d.dept_name AS department_name,
	dm.emp_no AS manager_employee_number,
	e.last_name AS manager_last_name,
	e.first_name AS manager_first_name
FROM
	departments AS d
JOIN
	dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN
	employees AS e ON dm.emp_no = e.emp_no;

-- Department information for each employee
SELECT
	e.emp_no AS employee_number,
	e.last_name,
	e.first_name,
	de.dept_no AS department_number,
	d.dept_name AS department_name
FROM
	employees AS e
JOIN
	dept_emp AS de ON e.emp_no = de.emp_no
JOIN
	departments AS d ON de.dept_no = d.dept_no;

-- Employee with first name Hercules and last name starts with "B"
SELECT
	first_name,
	last_name,
	sex
FROM
	employees
WHERE
	first_name = 'Hercules'
	AND last_name LIKE 'B%';

-- Sales Department
SELECT
	e.emp_no AS employee_number,
	e.last_name,
	e.first_name
FROM
	employees AS e
JOIN
	dept_emp AS de ON e.emp_no = de.emp_no
JOIN
	departments AS d ON de.dept_no = d.dept_no
WHERE
	d.dept_name = 'Sales';
	
-- Sales and Development Departments
SELECT
	e.emp_no AS employee_number,
	e.last_name,
	e.first_name,
	d.dept_name AS department_name
FROM
	employees AS e
JOIN
	dept_emp AS de ON e.emp_no = de.emp_no
JOIN
	departments AS d ON de.dept_no = d.dept_no
WHERE
	d.dept_name IN ('Sales', 'Development');

-- employee last name frequency
SELECT
	last_name,
	COUNT(*) AS frequency
FROM
	employees
GROUP BY
	last_name
ORDER BY
	frequency DESC, last_name;