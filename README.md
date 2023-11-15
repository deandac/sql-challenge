# sql-challenge
tutoring helped me with organizing my schema so i could upload the csv files in order into sql.

on the queries sql script(data analysis) portion. under the "Salary by Employee" section. AskBCS helped me get started and we tried a few variations of code and ended up with the following 
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

as i progressed through the query on my own bcs would occasionaly help as well.