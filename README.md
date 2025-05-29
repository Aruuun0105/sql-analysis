# Task 3 : SQL Data Analysis 
## Internship : Data Analyst
This project is part of a data analyst internship focused on SQL-based data analysis.
The goal was to extract meaningful insights from an e-commerce database using structured queries.

---

## Objective

Use SQL to:
- Extract relevant data from a relational database
- Perform filtering,aggregation, and grouping
- Execute joins and subqueries
- Create views and optimize queries

---

## Tools & Technologies

- MySQL WorkBench
- SQl (Structure Query language)
- GitHub

---

## Dataset

Used a sample E-commerce SQL database consisting of:
- Customers
- Orders
- order Items
- Products
- Categories

---
## Files Included
- 'task3_queries.sql': All SQL queries written for the task
- 'screenshots/':Folder containing output screenshots for each query
- 'README.md' : This file

---
## SQL Features Demonstrated 
- 'Select' , 'where' , 'Order By' , 'Group By','Having'
- Joins :'INNER JOIN','LEFT JOIN','RIGHT JOIN'
- Aggregate functions :'sum()', 'avg()','count()'
- Subqueries
- Views
- Index creation for optimization
---
## sample Queries
'''sql
-- Total revenue generated 
SELECT customer_id , COUNT(*) AS order_count FROM orders GROUP BY customer_id;

-- Average order value
SELECT AVG(total_amount) AS avg_order_value FROM orders;
