# SQL PARTITION BY Examples

This repository contains examples of using the `PARTITION BY` clause in SQL to perform various analytical functions. These examples demonstrate how to leverage `PARTITION BY` to group data within partitions and perform calculations or rankings over those partitions.

## What is `PARTITION BY`? 

The `PARTITION BY` clause in SQL is used to divide the result set into partitions and perform computations on each partition independently. It is commonly used with window functions to calculate aggregations, rankings, and other operations across partitions of data.

### Key Points:
- **Partitioning**: The data is divided into segments (partitions) based on one or more columns.
- **Window Functions**: Functions like `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `SUM()`, `AVG()`, `COUNT()`, `LAG()`, `LEAD()`, `FIRST_VALUE()`, and `LAST_VALUE()` can be used with `PARTITION BY`.

## Examples

### Example 1: ROW_NUMBER() with PARTITION BY
Assigns a unique sequential integer to rows within a partition, ordered by the specified column.

**Description**: This example assigns a unique row number to each employee within their department based on their salary in descending order.

### Example 2: RANK() with PARTITION BY
Assigns a rank to each row within a partition, with gaps in the ranking for ties.

**Description**: This example ranks employees within their department based on their salary in descending order. Employees with the same salary receive the same rank, with a gap following ties.

### Example 3: DENSE_RANK() with PARTITION BY
Assigns a rank to each row within a partition, without gaps in the ranking for ties.

**Description**: Similar to `RANK()`, but without gaps in the ranking sequence. Employees with the same salary receive the same rank, and the next rank continues sequentially.

### Example 4: SUM() with PARTITION BY
Calculates the sum of a column within each partition.

**Description**: This example calculates the total salary for each department.

### Example 5: AVG() with PARTITION BY
Calculates the average of a column within each partition.

**Description**: This example calculates the average salary for each department.

### Example 6: COUNT() with PARTITION BY
Counts the number of rows within each partition.

**Description**: This example counts the number of employees in each department.

### Example 7: LAG() with PARTITION BY
Accesses data from a previous row within the same partition.

**Description**: This example retrieves the salary of the previous employee within the same department based on hire date. If there is no previous employee, it returns 0.

### Example 8: LEAD() with PARTITION BY
Accesses data from a subsequent row within the same partition.

**Description**: This example retrieves the salary of the next employee within the same department based on hire date. If there is no next employee, it returns 0.

### Example 9: FIRST_VALUE() with PARTITION BY
Returns the first value in an ordered partition.

**Description**: This example retrieves the first salary in each department based on hire date.

### Example 10: LAST_VALUE() with PARTITION BY
Returns the last value in an ordered partition.

**Description**: This example retrieves the last salary in each department based on hire date.

## Running the Examples

1. Ensure you have a SQL environment set up.
2. Create the sample data table and insert the sample data.
3. Run the provided SQL scripts to see the results of each example.

Feel free to explore these examples to gain a deeper understanding of how `PARTITION BY` works and how you can use it in your SQL queries.
