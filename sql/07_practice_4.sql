-- Module 9: CTEs (Common Table Expressions)
-- Task 1: Find all customers whose total spending is greater than ₹10,000.
WITH customer_spending AS (
     SELECT cust_id, SUM(total_amount) AS total_spending
     FROM orders
     GROUP BY cust_id
)
SELECT * FROM customer_spending
WHERE total_spending > 10000;

-- Task 2: Task: Display each customer's name, total_spending But show only customers whose total spending is above ₹10,000.
WITH customer_spending AS (
     SELECT c.name, SUM(total_amount) AS total_spending
     FROM customers AS c
     JOIN orders AS o
     ON c.cust_id = o.cust_id
     GROUP BY c.cust_id, c.name
)
SELECT name, total_spending
FROM customer_spending
WHERE total_spending > 10000;


-- Task 3: Find the average total spending per customer, then display every customer whose spending is above that average.
-- Display: name, total_spending
WITH customer_spending AS (
     SELECT c.name, SUM(total_amount) AS total_spending
     FROM customers AS c
     JOIN orders AS o
     ON c.cust_id = o.cust_id
     GROUP BY c.cust_id, c.name
)
SELECT name
FROM customer_spending
WHERE total_spending > (SELECT AVG(total_spending) FROM customer_spending);