USE db;

SELECT *
FROM employees
WHERE YEAR(hire_date) = "2023";
