-- Module 4 - JOINs ------
-- Task 1: Show each customer's name along with their order date.
SELECT c.name,
       o.order_date
FROM customers AS c
INNER JOIN orders AS o
ON c.cust_id = o.cust_id;

-- Task 2: Show: Customer name, Order ID, Order date, Total amount.
SELECT c.name,
       o.order_id,
       o.order_date,
       o.total_amount
FROM customers AS c
INNER JOIN orders AS o
      ON c.cust_id = o.cust_id;

-- Task 3: Show: Customer name, Order ID, Product ID, Quantity.(Join Three Tables
SELECT c.name,
       o.order_id,
       oi.product_id,
       oi.quantity
FROM customers AS c
INNER JOIN orders AS o
      ON c.cust_id = o.cust_id
INNER JOIN order_items AS oi
      ON o.order_id = oi.order_id;

-- Task 4: Show: Customer name, Product name, Quantity purchased.
SELECT c.name,
       p.product_name,
       oi.quantity
FROM customers AS c
INNER JOIN orders AS o
      ON c.cust_id = o.cust_id
INNER JOIN order_items AS oi
      ON o.order_id = oi.order_id
INNER JOIN products AS p
      ON oi.product_id = p.product_id;
      
-- Task 5: Show all orders along with the customer name and the city where the order will be delivered.
SELECT o.order_id,
       c.name,
       a.city,
       o.total_amount
FROM customers AS c
INNER JOIN orders AS o
      ON c.cust_id = o.cust_id
INNER JOIN addresses AS a
      ON o.address_id = a.address_id;

-- Real Interview Question -----
-- Q 1: Show each product along with the total quantity sold.
SELECT p.product_name,
       SUM(oi.quantity) AS Total_Quantity_Sold
FROM order_items AS oi
INNER JOIN products AS p
      ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- Q 2: Which are the top 5 best-selling products?
SELECT p.product_name AS best_selling_products,
       SUM(oi.quantity) AS Total_Quantity_Sold
FROM order_items AS oi
INNER JOIN products AS p
      ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY Total_Quantity_Sold DESC
LIMIT 5;



-- Module 5 - LEFT JOIN -------
-- Task 1: Show all customers and their orders, including customers who have never placed an order.
SELECT c.name,
       o.order_id
FROM customers AS c
LEFT JOIN orders AS o
     ON c.cust_id = o.cust_id;
     
-- Task 2: Show only those customers who have never placed an order.
SELECT c.name,
       o.order_id
FROM customers AS c
LEFT JOIN orders AS o
     ON c.cust_id = o.cust_id
WHERE o.order_id IS NULL;

-- Task 3: Show all products, including products that have never been ordered.
SELECT p.product_name,
       oi.order_item_id
FROM products AS p
LEFT JOIN order_items AS oi
	 ON p.product_id = oi.product_id;
     
-- Task 4: Show the product name and total quantity sold for each product, including products that have never been ordered.
SELECT p.product_name,
	   SUM(oi.quantity)
FROM products AS p
LEFT JOIN order_items AS oi
     ON p.product_id = oi.product_id
GROUP BY p.product_name;

-- Task 5: Show each customer’s name and the total number of orders they have placed, including customers with zero orders.
SELECT c.name,
       COUNT(o.order_id)
FROM customers AS c
LEFT JOIN orders AS o
	 ON c.cust_id = o.cust_id
GROUP BY c.name;