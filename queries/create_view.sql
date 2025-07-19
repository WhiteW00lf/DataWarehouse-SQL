CREATE view purchase_table AS (

SELECT oi.order_id,
oi.price,
oi.freight_value,
op.payment_type AS payment_type,
op.payment_installments AS installments, 
op.payment_value AS price_paid,
orv.review_score AS review_score,
orv.review_creation_date AS review_date,
s.seller_id AS seller_id,
s.seller_city AS seller_city,
s.seller_state AS seller_state,
p.product_id AS product_id,
p.product_category_name AS product_category,
c.customer_id AS customer_id,
c.customer_city AS customer_city,
c.customer_state AS customer_state,
c.customer_zip_code_prefix AS customer_zip_code_prefix,
c.customer_unique_id AS customer_unique_id
FROM order_items oi 
INNER JOIN order_payments op 
ON oi.order_id = op.order_id
INNER join order_review orv
ON oi.order_id = orv.order_id
INNER JOIN sellers s 
ON oi.seller_id = s.seller_id
INNER JOIN products p
ON oi.product_id = p.product_id
INNER JOIN orders o
ON oi.order_id = o.order_id
INNER JOIN customers c
ON o.customer_id = c.customer_id
);
