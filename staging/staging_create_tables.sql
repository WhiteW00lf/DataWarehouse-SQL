-- customers table
CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY IDENTITY(1,1),
    customer_id VARCHAR(255) NOT NULL UNIQUE,
    customer_unique_id VARCHAR(255) NOT NULL,
    customer_zip_code_prefix INT NOT NULL,
    customer_city VARCHAR(100) NOT NULL,
    customer_state VARCHAR(4) NOT NULL
);

-- orders table
CREATE TABLE IF NOT EXISTS orders (
    id INT PRIMARY KEY IDENTITY(1,1),
    order_id VARCHAR(255) NOT NULL UNIQUE,
    customer_id VARCHAR(255) NOT NULL,
    order_status VARCHAR(50) NOT NULL,
    order_purchase_timestamp TIMESTAMP NOT NULL,
    order_approved_at TIMESTAMP NOT NULL,
    order_delivered_carrier_date TIMESTAMP NOT NULL,
    order_delivered_customer_date TIMESTAMP NOT NULL,
    order_delivered_delivery_date TIMESTAMP NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- sellers table
CREATE TABLE IF NOT EXISTS sellers (
    id INT PRIMARY KEY IDENTITY(1,1),
    seller_id VARCHAR(255) NOT NULL UNIQUE,
    seller_zip_code_prefix VARCHAR(100) NOT NULL,
    seller_city VARCHAR(100) NOT NULL,
    seller_state VARCHAR(4) NOT NULL
);

-- products table
CREATE TABLE IF NOT EXISTS products (
    id INT PRIMARY KEY IDENTITY(1,1),
    product_id VARCHAR(255) NOT NULL UNIQUE,
    product_category_name VARCHAR(100) NOT NULL,
    product_name_lenght INT NOT NULL,
    product_description_lenght INT NOT NULL,
    product_photos_qty INT NOT NULL,
    product_weight_g INT NOT NULL,
    product_length_cm INT NOT NULL,
    product_height_cm INT NOT NULL,
    product_width_cm INT NOT NULL
);

-- order_items table
CREATE TABLE IF NOT EXISTS order_items (
    id INT PRIMARY KEY IDENTITY(1,1),
    order_id VARCHAR(255) NOT NULL,
    order_item_id INT NOT NULL,
    product_id VARCHAR(255) NOT NULL,
    seller_id VARCHAR(255) NOT NULL,
    shipping_limit_date TIMESTAMP NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    freight_value DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (seller_id) REFERENCES sellers(seller_id)
);

-- order_payments table
CREATE TABLE IF NOT EXISTS order_payments (
    id INT PRIMARY KEY IDENTITY(1,1),
    order_id VARCHAR(255) NOT NULL,
    payment_sequential INT NOT NULL,
    payment_type VARCHAR(50) NOT NULL,
    payment_installments INT NOT NULL,
    payment_value DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);

-- order_reviews table
CREATE TABLE IF NOT EXISTS order_review (
    id INT PRIMARY KEY IDENTITY(1,1),
    review_id VARCHAR(255) NOT NULL UNIQUE,
    order_id VARCHAR(255) NOT NULL,
    review_score INT NOT NULL,
    review_comment_title VARCHAR(255),
    review_comment_message TEXT,
    review_creation_date TIMESTAMP NOT NULL,
    review_answer_timestamp TIMESTAMP NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
