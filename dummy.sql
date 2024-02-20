CREATE database dummy;
use dummy;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2)
);

INSERT INTO employees  VALUES
(1, "John", "Doe", 101, "2022-01-10", 60000.00),
(2, 'Jane', 'Smith', 102, '2022-02-15', 70000.00),
(3, 'Bob', 'Johnson', 101, '2022-03-20', 55000.00),
(4, 'Alice', 'Williams', 103, '2022-04-25', 80000.00),
(5, 'Charlie', 'Brown', 102, '2022-05-30', 65000.00)
;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100),
    manager_id INT,
	foreign key(manager_id) references employees(employee_id)
);

INSERT INTO departments VALUES
(101, 'Human Resources', 1),
(102, 'Marketing', 2),
(103, 'Research and Development', 3),
(104, 'Finance', 4),
(105, 'Customer Support', 5);
