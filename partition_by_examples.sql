-- Create the sample data
CREATE TABLE employees (
    employee_id INT,
    department_id INT,
    salary DECIMAL(10, 2),
    hire_date DATE
);

INSERT INTO employees (employee_id, department_id, salary, hire_date) VALUES
(1, 1, 50000, '2020-01-15'),
(2, 1, 60000, '2021-02-20'),
(3, 1, 70000, '2022-03-10'),
(4, 2, 80000, '2019-04-25'),
(5, 2, 90000, '2020-05-30'),
(6, 2, 75000, '2021-06-10'),
(7, 3, 60000, '2022-07-15'),
(8, 3, 65000, '2023-08-20');

-- Example 1: ROW_NUMBER() with PARTITION BY
SELECT 
    employee_id, 
    department_id, 
    salary, 
    ROW_NUMBER() OVER (PARTITION BY department_id ORDER BY salary DESC) AS row_num
FROM 
    employees;

-- Example 2: RANK() with PARTITION BY
SELECT 
    employee_id, 
    department_id, 
    salary, 
    RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rank
FROM 
    employees;

-- Example 3: DENSE_RANK() with PARTITION BY
SELECT 
    employee_id, 
    department_id, 
    salary, 
    DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS dense_rank
FROM 
    employees;

-- Example 4: SUM() with PARTITION BY
SELECT 
    department_id, 
    employee_id, 
    salary, 
    SUM(salary) OVER (PARTITION BY department_id) AS department_total_salary
FROM 
    employees;

-- Example 5: AVG() with PARTITION BY
SELECT 
    department_id, 
    employee_id, 
    salary, 
    AVG(salary) OVER (PARTITION BY department_id) AS department_avg_salary
FROM 
    employees;

-- Example 6: COUNT() with PARTITION BY
SELECT 
    department_id, 
    employee_id, 
    salary, 
    COUNT(*) OVER (PARTITION BY department_id) AS department_employee_count
FROM 
    employees;

-- Example 7: LAG() with PARTITION BY
SELECT 
    employee_id, 
    department_id, 
    salary, 
    LAG(salary, 1, 0) OVER (PARTITION BY department_id ORDER BY hire_date) AS previous_salary
FROM 
    employees;

-- Example 8: LEAD() with PARTITION BY
SELECT 
    employee_id, 
    department_id, 
    salary, 
    LEAD(salary, 1, 0) OVER (PARTITION BY department_id ORDER BY hire_date) AS next_salary
FROM 
    employees;

-- Example 9: FIRST_VALUE() with PARTITION BY
SELECT 
    employee_id, 
    department_id, 
    salary, 
    FIRST_VALUE(salary) OVER (PARTITION BY department_id ORDER BY hire_date) AS first_salary
FROM 
    employees;

-- Example 10: LAST_VALUE() with PARTITION BY
SELECT 
    employee_id, 
    department_id, 
    salary, 
    LAST_VALUE(salary) OVER (PARTITION BY department_id ORDER BY hire_date RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_salary
FROM 
    employees;
