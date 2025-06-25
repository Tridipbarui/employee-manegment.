create database LIBRARY;

show databases;
use LIBRARY;
-- Create a sample table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    join_date DATE
);

-- INSERT: Add employees (some with NULLs)
INSERT INTO Employees (first_name, last_name, email, department, salary, join_date)
VALUES
('John', 'Doe', 'john.doe@example.com', 'HR', 50000.00, '2022-01-15'),
('Jane', 'Smith', 'jane.smith@example.com', 'Finance', 60000.00, '2021-11-01'),
('Mike', 'Brown', NULL, 'IT', NULL, '2023-06-10'), -- email and salary missing
('Emily', NULL, 'emily@example.com', 'Marketing', 48000.00, NULL), -- last_name and join_date missing
('Robert', 'Taylor', 'robert.t@example.com', NULL, 70000.00, '2020-05-20'); -- department missing

select * from Employees;
SELECT emp_id, first_name, email FROM Employees WHERE first_name = 'Mike';
UPDATE Employees
SET email = 'mike.brown@example.com'
WHERE emp_id = 3;


SELECT emp_id, first_name, salary FROM Employees WHERE first_name = 'Mike';
UPDATE Employees
SET salary = 55000.00
WHERE emp_id = 3;

SELECT emp_id, first_name, last_name FROM Employees WHERE first_name = 'Emily';
UPDATE Employees
SET last_name = 'White'
WHERE emp_id = 4

SELECT emp_id, first_name, join_date FROM Employees WHERE first_name = 'Emily';
UPDATE Employees
SET join_date = CURDATE()
WHERE emp_id =4;

SELECT emp_id, first_name, department FROM Employees WHERE emp_id =5;
UPDATE Employees
SET department = 'Sales'
WHERE emp_id = 5;

-- DELETE: Remove records of employees who joined before 2021
SELECT emp_id, first_name, join_date
FROM Employees
WHERE emp_id =5;

DELETE FROM Employees
WHERE emp_id = 5;


-- OPTIONAL: View the cleaned table
SELECT * FROM Employees;