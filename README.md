# E-Commerce Sales Analytics

A MySQL-based SQL project focused on analyzing e-commerce customers, orders, products, and sales data.


## Project Overview

This project contains a relational e-commerce database with customers, addresses, products, orders, and order items.

SQL queries are used to explore customer spending, orders, product sales, pricing, and other e-commerce business questions.


## Project Objective

* Build and work with a relational e-commerce database.
* Practice SQL concepts using e-commerce business scenarios.
* Analyze customer, order, and product data.
* Answer business questions using SQL.
* Demonstrate SQL and data analysis skills through a complete project.


## Database / Schema

The project contains 5 main tables:

* `customers` — Customer information
* `addresses` — Customer address information
* `products` — Product details
* `orders` — Order information
* `order_items` — Products included in each order


### Database Relationships

* `customers` → `addresses`
* `customers` → `orders`
* `addresses` → `orders`
* `orders` → `order_items`
* `products` → `order_items`

These tables are connected using primary keys and foreign keys.


## Tools & Technologies

* MySQL
* MySQL Workbench
* SQL
* Git
* GitHub


## Key Analysis / Questions

The project answers questions such as:

* Which customer has the highest total spending?
* Which customers are above the average customer spending?
* What is the most expensive product?
* Which products are priced above their category average?
* Which product has the highest quantity sold?
* What is the highest-value order for each customer?
* How many orders are placed each month?
* What is the average order amount for each customer?
* What is the running total of orders for each customer?
* How can customers, products, and orders be categorized using `CASE` statements?


## How to Run the Project

1. Install MySQL and MySQL Workbench.
2. Clone this repository.
3. Open MySQL Workbench and connect to your MySQL server.
4. Run `database.sql` to create the `ecommerce_analytics` database.
5. Run `tables.sql` to create the tables.
6. Run `data.sql` to insert the project data.
7. Open the SQL files from the `sql` folder.
8. Execute the queries to perform the analysis.


## Skills Demonstrated

* SQL querying
* Relational database design
* Data aggregation
* Data filtering and sorting
* Table joins
* Subqueries
* CASE statements
* String and date functions
* Common Table Expressions (CTEs)
* Window functions
* Business-oriented data analysis
* Git & GitHub
