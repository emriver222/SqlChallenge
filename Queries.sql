
--Question #1 
SELECT  e.emp_no,
		e.last_name, 
		e.first_name, 
		e.sex, 
		s.salary
FROM "employees" AS e
INNER JOIN "salaries" AS s ON (e.emp_no = s.emp_no)
;

--Question #2 
SELECT  last_name, 
	 	first_name, 
		hire_date
FROM "employees"
WHERE hire_date >='1986-01-01' AND hire_date<'1987-01-01'
;

--Question #3
SELECT  d.dept_no, 
		d.dept_name,
		e.emp_no, 
		e.last_name, 
		e.first_name
FROM "departments" AS d
INNER JOIN "dept_manager" AS dm ON (d.dept_no = dm.dept_no)
INNER JOIN "employees" AS e ON (e.emp_no = dm.emp_no)
;

--Question #4
SELECT  e.emp_no,
		e.last_name,
		e.first_name,
		d.dept_name
FROM "employees" AS e
INNER JOIN "dept_emp" AS de ON (de.emp_no = e.emp_no)
INNER JOIN "departments" AS d ON (d.dept_no = de.dept_no)
;

--Question #5
SELECT  first_name,
		last_name, 
		sex
FROM "employees" 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
;

--Question #6
SELECT  e.emp_no, 
		e.last_name,
		e.first_name, 
		d.dept_name
FROM "employees" AS e
INNER JOIN "dept_emp" AS de ON (e.emp_no = de.emp_no)
INNER JOIN "departments" AS d ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
;


--Question #7
SELECT  e.emp_no,
		e.last_name, 
		e.first_name, 
		d.dept_name
FROM "employees" AS e
INNER JOIN "dept_emp" AS de ON (e.emp_no = de.emp_no)
INNER JOIN "departments" AS d ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales','Development')
ORDER BY d.dept_name
;


--Question #8
SELECT last_name, 
COUNT(last_name)
FROM "employees"
GROUP BY last_name
ORDER BY COUNT(last_name) DESC
;






