USE db;

SELECT 
	employees.employee_id,
    employees.first_name,
    employees.last_name,
    employees.hire_date,
    departments.department_name
FROM 
    employees
INNER JOIN 
    departments
ON 
    employees.department_id = departments.department_id
HAVING departments.department_name="Finance";