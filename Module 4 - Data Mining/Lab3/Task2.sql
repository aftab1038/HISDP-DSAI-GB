USE db;

-- Inserting values into Departments table
INSERT INTO Departments (department_name) VALUES ('Sales');
INSERT INTO Departments (department_name) VALUES ('Marketing');
INSERT INTO Departments (department_name) VALUES ('HR');

-- Inserting values into Employees table
INSERT INTO Employees (first_name, last_name, hire_date, department_id)
VALUES ('John', 'Doe', '2023-01-15', 1);

INSERT INTO Employees(first_name, last_name, hire_date, department_id)
VALUES ('Ali', 'Abass', '2023-11-12', 2);

INSERT INTO Employees(first_name, last_name, hire_date, department_id)
VALUES ('Arjamand', 'Ali', '2023-07-12', 3);

INSERT INTO Employees(first_name, last_name, hire_date, department_id)
VALUES ('Aftab', 'Nafees', '2023-02-10', 2);

INSERT INTO Employees(first_name, last_name, hire_date, department_id)
VALUES ('Asad', 'Nazir', '2023-12-12', 1);