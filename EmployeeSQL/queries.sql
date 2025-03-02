-- Question 1

SELECT 
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    emp.sex,
    sal.salary
FROM 
    Employee emp
JOIN 
    Salary sal ON emp.emp_no = sal.emp_no;


-- Question 2

SELECT 
    first_name,
    last_name,
    hire_date
FROM 
    Employee
WHERE 
    hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- Question 3

SELECT 
    dm.dept_no,
    dept.dept_name,
    emp.emp_no,
    emp.last_name,
    emp.first_name
FROM 
    DepartmentManager dm
JOIN 
    Department dept ON dm.dept_no = dept.dept_no
JOIN 
    Employee emp ON dm.emp_no = emp.emp_no;

-- Question 4

SELECT 
    de.dept_no,
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    dept.dept_name
FROM 
    DepartmentEmployee de
JOIN 
    Employee emp ON de.emp_no = emp.emp_no
JOIN 
    Department dept ON de.dept_no = dept.dept_no;

-- Question 5

SELECT 
    emp.first_name,
    emp.last_name,
    emp.sex
FROM 
    Employee emp
WHERE 
    emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';

-- Question 6

SELECT 
    emp.emp_no,
    emp.last_name,
    emp.first_name
FROM 
    DepartmentEmployee de
JOIN 
    Employee emp ON de.emp_no = emp.emp_no
JOIN 
    Department dept ON de.dept_no = dept.dept_no
WHERE 
    dept.dept_name = 'Sales';

-- Question 7

SELECT 
    emp.emp_no,
    emp.last_name,
    emp.first_name,
    dept.dept_name
FROM 
    DepartmentEmployee de
JOIN 
    Employee emp ON de.emp_no = emp.emp_no
JOIN 
    Department dept ON de.dept_no = dept.dept_no
WHERE 
    dept.dept_name IN ('Sales', 'Development');

    -- Question 8

SELECT 
    emp.last_name,
    COUNT(emp.last_name) AS frequency
FROM 
    Employee emp
GROUP BY 
    emp.last_name
ORDER BY 
    frequency DESC;