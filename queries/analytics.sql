
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
GROUP BY order_status









