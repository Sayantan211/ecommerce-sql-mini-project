-- ALL ORDERS WITH CUSTOMER NAMES AND TOTAL AMOUNT
SELECT o.order_id, c.name AS customer_name, SUM(p.price*oi.quantity)
AS total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id= oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY o.order_id;


-- TOP SPENDING CUSTOMERS
SELECT c.name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- MOST POPULAR PRODUCTS
SELECT p.name, SUM(oi.quantity) AS total_sold
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_sold DESC;


