
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
ORDER BY total_spent DESC


