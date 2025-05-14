INSERT INTO customers VALUES(1,'Rohit', 'rohit12@gmail.com');
INSERT INTO customers VALUES(2,'Shyam', 'shyamkoo@gmail.com');

INSERT INTO products VALUES(121, 'HP Laptop', 80000.00);
INSERT INTO products VALUES(127, 'Earbuds', 2000.00);
INSERT INTO products VALUES(139, 'Bluetooth Speaker', 10000.00);

INSERT INTO orders VALUES(90,1,'2025-09-01');
INSERT INTO orders VALUES(91,1,'2025-09-10');
INSERT INTO orders VALUES(92,2,'2025-07-12');

INSERT INTO order_items VALUES(76,90,121,2);
INSERT INTO order_items VALUES(78,91,127,1);
INSERT INTO order_items VALUES(80,91,139,1);
INSERT INTO order_items VALUES(82,92,121,1);

SELECT * FROM order_items;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM products;

