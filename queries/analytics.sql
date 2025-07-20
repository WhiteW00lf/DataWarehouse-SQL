
--How many unique customers do you have?

SELECT COUNT(customer_unique_id) AS customers FROM purchase_table
;

--Which 5 cities have placed the most orders?

SELECT COUNT(order_id) AS orders, customer_city FROM purchase_table 
GROUP BY customer_city
ORDER BY orders DESC
LIMIT 5;

--What are the different order statuses and how many orders fall into each status?


SELECT order_status,COUNT(order_id) AS orders FROM orders
GROUP BY order_status;


-- Calculate the total revenue and number of units sold for each product.

SELECT product_category,SUM(price_paid) AS Revenue,
COUNT(product_id) AS units_sold
FROM purchase_table 
group by product_category;


---  Which customer has placed the most orders? Show their id and number of orders.

SELECT customer_uniquE_id, COUNT(order_id) AS number_oforders 
FROM purchase_table
GROUP BY customer_unique_id
ORDER BY number_oforders DESC
LIMIT 1;


-- Calculate Customer Lifetime Value (CLTV): total amount each customer has spent.

SELECT customer_unique_id, SUM(price_paid) 
as total_spent FROM purchase_table
GROUP BY customer_unique_id
ORDER BY total_spent DESC;

-- What’s the average order value (AOV)?

SELECT AVG(price_paid) AS average_order_value FROM purchase_table;

-- List the top 5 most expensive products
SELECT product_id,product_category, MAX(price_paid) AS max_price
FROM purchase_table
GROUP BY product_id,product_category
ORDER BY max_price DESC
LIMIT 5;

-- Which payment method generated the highest revenue overall?

SELECT payment_type AS payment_method, SUM(price_paid) AS total_revenue
FROM purchase_table 
GROUP BY payment_type
ORDER BY total_revenue DESC
LIMIT 1;

-- Find the difference between in time between order placement and order delivery.Which order took the longest time?

SELECT 
  order_id,
  ROUND(EXTRACT(EPOCH FROM order_delivered_customer_date - order_purchase_timestamp) /3600,2) AS delivery_in_hours
FROM orders
WHERE order_purchase_timestamp IS NOT NULL 
  AND order_delivered_customer_date IS NOT NULL 
ORDER BY delivery_in_hours DESC
LIMIT 10;


/*
DELETE FROM orders 
WHERE order_approved_at is NULL OR
order_delivered_delivery_date IS NULL;
*/