SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM regions;

-- 1. Alias to the table
-- Q1: List all employees using an alias for the employees table.
SELECT * FROM employees AS e;

-- 2. Subquery using NOT IN
-- Q2: Find all employees who are not in any department under the 'Health' division.
SELECT *
FROM employees
WHERE department NOT IN (SELECT department FROM departments WHERE division = 'Health');

-- 3. Subquery using SELECT * FROM (subquery)
-- Q3: Show all employee details whose salary is above the average salary.
SELECT * 
FROM employees
WHERE salary > (SELECT AVG(salary) AS avg_sal FROM employees) ;

-- 4. Subquery in SELECT, WHERE, FROM
-- Q4: Show each employee's salary and the average salary of their department.
SELECT 
	employee_id, 
	first_name, 
    salary, 
    department, 
    (
		SELECT ROUND(AVG(salary), 2)  as avg_salary 
		FROM employees e 
		WHERE e.department = e2.department
    ) AS avg_dept_salary
FROM employees e2;

-- Q5: List employees who earn more than the average salary in their department.
SELECT 
	employee_id, 
	first_name, 
    department, 
    salary
FROM employees e2
	WHERE salary > (
		SELECT ROUND(AVG(salary), 2) AS avg_salary FROM employees e
		WHERE e.department = e2.department
		);

-- Q6: List employees with salary greater than the minimum salary across all regions.
SELECT 
	employee_id, 
	first_name, 
    salary 
FROM employees
	WHERE salary > (SELECT MIN(salary) FROM employees);
    
-- 5. Subquery using multiple tables
-- Q7: Show names of employees who work in departments that belong to the 'Electronics' division.
SELECT 
	e.employee_id, 
	e.first_name, 
    d.department, 
    d.division
FROM employees e
	JOIN departments d ON e.department = d.department
	WHERE d.division IN (SELECT division FROM departments WHERE division = 'Electronics');
    
-- 6. ANY and ALL operations
-- Q8: List employees who earn more than ALL employees in the 'Books' department.
SELECT 
	employee_id, 
	first_name, 
    salary, 
    department
FROM employees 
	WHERE salary > ALL (SELECT salary FROM employees WHERE department = 'Books');

-- Q9: List employees whose salary is greater than ANY employee from 'Tools' department.
SELECT 
	employee_id, 
    first_name, 
    salary, 
    department
FROM employees
	WHERE salary > ANY (SELECT salary FROM employees WHERE department = 'Tools');
    
-- 7. Bonus Practice
-- Q10: Find departments where the average salary is higher than the average salary across all employees.
SELECT 
	DISTINCT department, 
    ROUND(AVG(salary), 2) AS avg_salary 
FROM employees
	GROUP BY department
	HAVING ROUND(AVG(salary), 2) > (SELECT ROUND(AVG(salary), 2) 
FROM employees);

-- Q11: List departments that have more than 5 employees.
SELECT 
	COUNT(employee_id) AS employee_cnt, 
    department
FROM employees
	GROUP BY department
    HAVING employee_cnt > 5;

-- Q12: List employees whose salary is the highest within their department (no JOIN).
SELECT 
	employee_id, 
    first_name, 
    salary, 
    department
FROM employees e 
	WHERE salary = (
		SELECT 
			MAX(salary) 
		FROM employees e2 
			WHERE e.department = e2.department
	)
;
-- Q13: Find regions with at least one employee earning above 150000.
SELECT 
	DISTINCT e.region_id, 
    r.region 
FROM employees e 
JOIN regions r 
	ON e.region_id = r.region_id 
WHERE salary > 150000; 

-- Q14: Display employees who are working in departments that are not listed in the departments table.
SELECT * 
FROM employees 
	WHERE department NOT IN (
								SELECT department FROM departments
							);
                            
-- Q15: Find the employee(s) with the earliest hire date (without using ORDER BY or LIMIT).
SELECT * FROM employees WHERE hire_date = (SELECT MIN(hire_date) FROM employees);

SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM regions;
-- Practice 2
-- Q1: Find the most senior (earliest hired) employee in each region using subqueries only.

-- Q2: List departments where all employees earn more than the average salary of the entire company.

-- Q3: List employees whose salary is more than 1.5 times the average salary of their department.

-- Q4: Find the highest paid employee in each division using only subqueries.

-- Q5: Identify regions that have the most departments with average salary greater than 100000.

-- Q6: What will the following query return? Why?
-- SELECT * FROM employees
-- WHERE department NOT IN (
--     SELECT department FROM employees WHERE salary > 200000
-- );