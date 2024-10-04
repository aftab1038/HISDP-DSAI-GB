USE db;

SELECT departments.department_name, count(employees.employee_id)
FROM 
    employees
INNER JOIN 
    departments
ON 
    employees.department_id = departments.department_id
GROUP BY employees.department_id
ORDER BY count(employees.employee_id) DESC;
