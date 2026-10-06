-- Module 6: Subqueries
-- Task 1: Find the most expensive product using a subquery.
SELECT * FROM products
WHERE price = (SELECT MAX(price) FROM products);


-- Task 2: Find all products whose price is higher than the average price of all products.
SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);


-- Task 3: Find the customer(s) who placed the highest-value order.
SELECT *
FROM customers AS c
JOIN orders AS o
ON c.cust_id = o.cust_id
WHERE total_amount = (SELECT MAX(total_amount) FROM orders);


-- Task 4: Find all products whose price is greater than the average price of products in their own category.
SELECT * FROM products AS p
WHERE p.price > (SELECT AVG(price) FROM products WHERE category = p.category);


-- Task 5: Find the customer(s) whose total spending is greater than the average total spending of all customers.
SELECT c.cust_id, c.name, SUM(o.total_amount) AS total_spending
FROM customers AS c
JOIN orders AS o
ON c.cust_id = o.cust_id
GROUP BY c.cust_id, c.name
HAVING SUM(o.total_amount) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT cust_id, SUM(total_amount) AS customer_total
        FROM orders
        GROUP BY cust_id
    ) AS customer_spending
);


-- -------------------------------------------------------------------------------------------------------------------------------------------

-- Module 7 — CASE Statements
-- Task 1: Display all products with their product name, price, and a new column called price_category.
-- Categorize products as: "Budget" < 1000, "Mid-Range" → price from 1000 to 5000, "Premium" > 5000
SELECT product_name,
       price,
       CASE 
           WHEN price < 1000 THEN 'Budget'
           WHEN price BETWEEN 1000 AND 5000 THEN 'Mid-Range'
           ELSE 'Premium'
           END AS price_category
FROM products;


-- Task 2: Find all orders and create a new column called order_size:
-- "Small" → total_amount < 2000,  "Medium" → 2000–5000,  "Large" → > 5000
SELECT *,
       CASE
           WHEN total_amount < 2000 THEN 'Small'
           WHEN total_amount BETWEEN 2000 AND 5000 THEN 'Medium'
           ELSE 'Large'
           END AS order_size
FROM orders;


-- Task 3: Display each customer’s name and their total number of orders, along with a new column called customer_type:
-- "New" → 1 order,  "Regular" → 2 orders,  "Loyal" → 3 or more orders
SELECT c.name,
       COUNT(o.order_id),
       CASE
           WHEN COUNT(o.order_id) <= 1 THEN 'New'
           WHEN COUNT(o.order_id) = 2 THEN 'Regular'
           ELSE 'Loyal'
           END AS customer_type
FROM customers AS c
JOIN orders AS o
ON c.cust_id = o.cust_id
GROUP BY c.cust_id, c.name;


-- Task 4: For each product, display product_name, price, and a new column price_difference:
-- If price is below 5000 → calculate 5000 - price
-- If price is 5000 or above → calculate price - 5000
SELECT product_name,
       price,
       CASE
           WHEN price < 5000 THEN 5000-price
           WHEN price >= 5000 THEN price-5000
           END AS price_difference
FROM products;


-- Task 5: For each order, calculate a discount amount using CASE:
-- total_amount < 2000 → No discount (0),  2000–5000 → 5% discount, total_amount > 5000 → 10% discount
-- Display: order_id, total_amount, discount
SELECT order_id,
       total_amount,
	   CASE
           WHEN total_amount < 2000 THEN 0
           WHEN total_amount BETWEEN 2000 AND 5000 THEN total_amount * 0.05
           WHEN total_amount > 5000 THEN total_amount * 0.10
           END AS discount
FROM orders;


-- ---------------------------------------------------------------------------------------------------------------------------------------

-- Module 8: String & Date Functions
-- Task 1: Display every customer's name and an uppercase version of their name in Saperate Column.
SELECT name,
	   UPPER(name) AS uppercase_name
FROM customers;


-- Task 2: Display each customer's name and the number of characters in their name
SELECT name,
	   LENGTH(name) AS total_characters
FROM customers;


-- Task 3: Display each order's order_id, order_date, the year in which the order was placed.
SELECT order_id,
       order_date,
       YEAR(order_date) AS order_year
FROM orders;


-- Task 4: For each order, display order_id, order_date, the number of days since the order was placed until today.
SELECT order_id,
       order_date,
	   DATEDIFF(CURDATE(), order_date) AS days
FROM orders;


-- Task 5: Find the number of orders placed in each month. - Display month, total_orders
SELECT MONTH(order_date) AS months,
	   COUNT(order_id) AS total_orders
FROM orders
GROUP BY months;