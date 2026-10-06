INSERT INTO customers (name, email, ph_number, signup_date)
VALUES
("Lokesh Kumar", "lokesh@gmail.com", "9672979716", "2026-04-25"),
("Rahul Mehta", "rahul@gmail.com", "6548974367", "2026-01-15"),
("Priya Verma", "priya@gmail.com", "9676845616", "2026-02-05"),
("Amit Singh", "amit@gmail.com", "9672683925", "2026-02-20"),
("Neha Gupta", "neha@gmail.com", "9667845623", "2026-03-22"),
("Rohit Sharma", "rohit@gmail.com", "9878767616", "2026-01-23"),
("Anjali Jain", "anjali@gmail.com", "6587979716", "2026-04-25"),
("Vikas Yadav", "vikas@gmail.com", "5673459876", "2026-02-20"),
("Shreya Tiwari", "shreya@gmail.com", "9672979610", "2026-01-15"),
("Kuldeep Mehra", "kuldeep@gmail.com", "5638900225", "2026-02-20");

INSERT INTO addresses (cust_id, city, full_address, pincode)
Values
(1, "Jaipur", "Mansarovar, Jaipur", "302020"),
(1, "Jaipur", "Vaishali Nagar, Jaipur", "302021"),
(2, "Delhi", "Rohini Sector 10, Delhi", "110085"),
(2, "Delhi", "Dwarka Sector 5, Delhi", "110075"),
(3, "Mumbai", "Andheri East, Mumbai", "400069"),
(3, "Mumbai", "Borivali West, Mumbai", "400092"),
(4, "Bangalore", "Whitefield, Bangalore", "560066"),
(5, "Pune", "Hinjewadi Phase 1, Pune", "411057"),
(5, "Pune", "Kothrud, Pune", "411038"),
(6, "Hyderabad", "Madhapur, Hyderabad", "500081"),
(7, "Chennai", "T Nagar, Chennai", "600017"),
(7, "Chennai", "Velachery, Chennai", "600042"),
(8, "Kolkata", "Salt Lake Sector 5, Kolkata", "700091"),
(9, "Ahmedabad", "Satellite, Ahmedabad", "380015"),
(10, "Surat", "Adajan, Surat", "395009");

INSERT INTO products (product_name, category, price, added_date)
VALUES
("T-Shirt", "Clothing", 500, "2026-01-05"),
("Jeans", "Clothing", 1200, "2026-01-10"),
("Shirt", "Clothing", 900, "2026-01-15"),
("Cap", "Clothing", 400, "2026-04-24"),
("Jacket", "Clothing", 2500, "2026-02-01"),

("Shoes", "Footwear", 2000, "2026-02-05"),
("Sneakers", "Footwear", 1800, "2026-02-10"),
("Sandals", "Footwear", 800, "2026-02-15"),
("Formal Shoes", "Footwear", 2200, "2026-03-01"),

("Gaming Mouse", "Electronics", 1800, "2026-04-22"),
("Keyboard", "Electronics", 2200, "2026-04-23"),
("Smartphone", "Electronics", 15000, "2026-03-05"),
("Laptop", "Electronics", 55000, "2026-03-10"),
("Headphones", "Electronics", 2500, "2026-03-15"),
("Smartwatch", "Electronics", 7000, "2026-04-01");


INSERT INTO orders (cust_id, order_date, total_amount, address_id)
VALUES
(1, "2026-04-01", 2900, 1),
(2, "2026-04-02", 15000, 3),
(3, "2026-04-03", 4300, 5),
(4, "2026-04-03", 2200, 7),
(5, "2026-04-04", 1800, 8),
(6, "2026-04-05", 55000, 10),
(7, "2026-04-06", 3200, 11),
(8, "2026-04-07", 7000, 13),
(9, "2026-04-08", 2500, 14),
(10, "2026-04-09", 1600, 15),

(1, "2026-04-10", 1700, 2),
(2, "2026-04-11", 2400, 4),
(3, "2026-04-12", 18000, 6),
(5, "2026-04-13", 400, 9),
(6, "2026-04-14", 4700, 10),

(7, "2026-04-15", 900, 12),
(8, "2026-04-16", 2200, 13),
(9, "2026-04-17", 2000, 14),
(10, "2026-04-18", 3700, 15),
(4, "2026-04-19", 1200, 7),

(2, "2026-04-20", 7000, 3),
(3, "2026-04-21", 2500, 5),
(1, "2026-04-22", 1500, 1),
(6, "2026-04-23", 2200, 10),
(5, "2026-04-24", 800, 9);


INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase)
VALUES
(1, 6, 1, 2000),
(1, 1, 1, 500),
(1, 4, 1, 400),

(2, 12, 1, 15000),

(3, 5, 1, 2500),
(3, 10, 1, 1800),

(4, 9, 1, 2200),

(5, 7, 1, 1800);

INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase)
VALUES
(6, 13, 1, 55000),

(7, 7, 1, 1800),
(7, 3, 1, 900),
(7, 1, 1, 500),

(8, 15, 1, 7000),

(9, 14, 1, 2500),

(10, 8, 2, 800);

INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase)
VALUES
(11, 1, 1, 500),
(11, 2, 1, 1200),

(12, 8, 3, 800),

(13, 12, 1, 15000),
(13, 6, 1, 2000),
(13, 1, 2, 500),

(14, 4, 1, 400),

(15, 14, 1, 2500),
(15, 7, 1, 1800),
(15, 4, 1, 400);

INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase)
VALUES
(16, 3, 1, 900),

(17, 11, 1, 2200),

(18, 6, 1, 2000),

(19, 2, 1, 1200),
(19, 14, 1, 2500),

(20, 2, 1, 1200);

INSERT INTO order_items (order_id, product_id, quantity, price_at_purchase)
VALUES
(21, 15, 1, 7000),

(22, 5, 1, 2500),

(23, 1, 3, 500),

(24, 11, 1, 2200),

(25, 8, 1, 800);



