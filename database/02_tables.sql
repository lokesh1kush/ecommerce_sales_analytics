CREATE TABLE customers (
  cust_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(50) UNIQUE NOT NULL,
  ph_number VARCHAR(15) UNIQUE NOT NULL,
  signup_date DATE NOT NULL
);

CREATE TABLE addresses (
  address_id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT,
  city VARCHAR(20) NOT NULL,
  full_address VARCHAR(100) NOT NULL,
  pincode INT NOT NULL,
  FOREIGN KEY (cust_id) REFERENCES customers(cust_id)
);

CREATE TABLE products (
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(50) NOT NULL,
  category VARCHAR(50) NOT NULL,
  price INT NOT NULL,
  added_date DATE NOT NULL
);

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  cust_id INT,
  order_date DATE NOT NULL,
  total_amount INT NOT NULL,
  address_id INT NOT NULL,
  FOREIGN KEY (cust_id) REFERENCES customers(cust_id),
  FOREIGN KEY (address_id) REFERENCES addresses(address_id)
);

CREATE TABLE order_items (
  order_item_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT,
  product_id INT,
  quantity INT,
  CHECK (quantity > 0),
  price_at_purchase INT NOT NULL,
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (product_id) REFERENCES products(product_id)
);