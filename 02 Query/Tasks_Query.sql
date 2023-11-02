-- Active: 1698822779218@@127.0.0.1@3306@module_6_assignment

-- Tasks:1::

-- SELECT c.id AS customer_id, c.name, c.email, c.location, COUNT(orders.id) AS num_orders
-- FROM customers c
-- LEFT JOIN orders ON c.id = orders.customer_id
-- GROUP BY c.id
-- ORDER BY num_orders DESC;


-- Tasks:2::

-- SELECT o.id AS order_id, p.name AS product_name, oi.quantity, oi.unit_price * oi.quantity AS total_amount
-- FROM orders o
-- INNER JOIN order_items oi ON o.id = oi.order_id
-- INNER JOIN products p ON oi.product_id = p.id
-- ORDER BY o.id ASC;


-- Tasks:3::

-- SELECT c.name AS category_name, SUM(oi.unit_price * oi.quantity) AS total_revenue
-- FROM order_items oi
-- INNER JOIN products p ON oi.product_id = p.id
-- INNER JOIN categories c ON p.category_id = c.id
-- GROUP BY c.id
-- ORDER BY total_revenue DESC;



-- Tasks:4::

-- SELECT c.name, SUM(o.total_amount) AS total_purchase_amount
-- FROM customers c
-- INNER JOIN orders o ON c.id = o.customer_id
-- GROUP BY c.id
-- ORDER BY total_purchase_amount DESC
-- LIMIT 5;
