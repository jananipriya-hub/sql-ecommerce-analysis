--Total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

--Total revenue generated
SELECT SUM(payment_value) AS total_revenue
FROM payments;

--Number of unique customers
SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customers;

--Total number of products sold
SELECT COUNT(product_id) AS products_sold
FROM order_items;

--Top 5 product categories by sales
SELECT product_category_name,
       COUNT(*) AS total_sales
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY product_category_name
ORDER BY total_sales DESC
LIMIT 5;

--Top 10 customers by spending
SELECT o.customer_id,
       SUM(p.payment_value) AS total_spent
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY o.customer_id
ORDER BY total_spent DESC
LIMIT 10;

--Average order value
SELECT AVG(payment_value) AS avg_order_value
FROM payments;

--Customers with more than one order
SELECT customer_id,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1;

--City with highest number of customers
SELECT customer_city,
       COUNT(*) AS total_customers
FROM customers
GROUP BY customer_city
ORDER BY total_customers DESC
LIMIT 1;

--State generating highest revenue
SELECT c.customer_state,
       SUM(p.payment_value) AS revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN payments p
ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY revenue DESC
LIMIT 1;

--Orders per month
SELECT DATE_TRUNC('month', order_purchase_timestamp) AS month,
       COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

--Monthly revenue
SELECT DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
       SUM(p.payment_value) AS revenue
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

--Month with highest sales
SELECT DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
       SUM(p.payment_value) AS revenue
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY month
ORDER BY revenue DESC
LIMIT 1;

--Top 10 best-selling products
SELECT product_id,
       COUNT(*) AS total_sales
FROM order_items
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 10;

--Product category with highest revenue
SELECT p.product_category_name,
       SUM(oi.price) AS revenue
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC
LIMIT 1;

--Average price per category
SELECT p.product_category_name,
       AVG(oi.price) AS avg_price
FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id
GROUP BY p.product_category_name;

--Most expensive product sold
SELECT product_id,
       MAX(price) AS highest_price
FROM order_items
GROUP BY product_id
ORDER BY highest_price DESC
LIMIT 1;

--Most used payment method
SELECT payment_type,
       COUNT(*) AS usage_count
FROM payments
GROUP BY payment_type
ORDER BY usage_count DESC
LIMIT 1;

--Total payment value by payment type
SELECT payment_type,
       SUM(payment_value) AS total_payment
FROM payments
GROUP BY payment_type
ORDER BY total_payment DESC;

--Rank customers by spending (Window Function)
SELECT o.customer_id,
       SUM(p.payment_value) AS total_spent,
       RANK() OVER (ORDER BY SUM(p.payment_value) DESC) AS spending_rank
FROM orders o
JOIN payments p
ON o.order_id = p.order_id
GROUP BY o.customer_id;
