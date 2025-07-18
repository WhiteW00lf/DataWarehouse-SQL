-- How many customers are there in the database?
SELECT COUNT(*) FROM customers ;

-- How many customers have a valid data?

SELECT COUNT(*) FROM customers 
WHERE customer_city IS NOT NULL 
AND customer_id IS NOT NULL
AND customer_state IS NOT NULL 
AND customer_zip_code_prefix IS NOT NULL ;



-- Are there any anomalies in payments data?

SELECT payment_value FROM order_payments WHERE payment_value < 0  LIMIT 10;