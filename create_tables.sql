USE ecommerce_db;
CREATE TABLE customers(
customer_id INT PRIMARY KEY,
name VARCHAR(50),
EMAIL VARCHAR(50) );

CREATE TABLE products(
product_id INT PRIMARY KEY,
name VARCHAR(50),
price DECIMAL(10,2) );

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items(
item_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id));

SHOW TABLES;



