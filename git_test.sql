-- Create Table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary NUMERIC(10,2),
    department VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert Records
INSERT INTO employees (first_name, last_name, email, salary, department)
VALUES
('John', 'Doe', 'john.doe@example.com', 55000.00, 'IT'),
('Jane', 'Smith', 'jane.smith@example.com', 62000.00, 'HR'),
('Mike', 'Johnson', 'mike.johnson@example.com', 58000.00, 'Finance');

-- View Data
SELECT * FROM employees;

-- Update Record
UPDATE employees
SET
    salary = 60000.00,
    department = 'Engineering'
WHERE employee_id = 1;

-- Verify Update
SELECT * FROM employees WHERE employee_id = 1;

-- Delete Record
DELETE FROM employees
WHERE employee_id = 3;

-- Verify Delete
SELECT * FROM employees;

-- Drop Table (Optional)
-- DROP TABLE employees;