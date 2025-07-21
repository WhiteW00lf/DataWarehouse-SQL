
**🛒 Redshift E-commerce SQL Analytics Project**

📌 Overview
This project simulates a real-world Data Engineering & Analytics workflow for an e-commerce business. It uses Amazon Redshift Serverless to ingest, transform, and analyze a dataset of customer orders, payments, and product listings.

The goal is to demonstrate SQL proficiency and analytical thinking using Redshift on a realistic relational schema.

🧱 Tech Stack
- Amazon Redshift Serverless (Data warehouse)

- Amazon S3 (Data staging & ingestion)

- SQL (Exploration, transformation, analytics)

- VS Code + Redshift Connection (Optional client setup)


| Table         | Description                                     |
| ------------- | ----------------------------------------------- |
| `customers`   | Customer profile and location                   |
| `products`    | Product catalog with price/category             |
| `orders`      | Purchase orders with date, customer info        |
| `order_items` | Item-level data per order (product, qty, price) |
| `payments`    | Payment records with method and amount          |


📥 Data Loading Process
CSVs uploaded to Amazon S3

Tables created manually in Redshift using staging_create_tables.sql

Data loaded using Redshift COPY commands (copy_safe.sql)

SQL Business Intelligence Questions
A mixed set of 10 business questions were explored using SQL. These include beginner, intermediate, and advanced use cases.

Key Learnings
- Writing clean, efficient SQL for analytics in a cloud DWH

- Using Redshift’s COPY command with S3 data

- Performing exploratory, operational, and business SQL analysis

- Structuring SQL projects for reproducibility & sharing