--copy customers

COPY customers FROM 's3://ecomdatawarehouse/olist_customers_dataset.csv'
IAM_ROLE 'YOURIAMROLE'
FORMAT AS csv
IGNOREHEADER 1;

--copy orders

COPY orders FROM 's3://ecomdatawarehouse/olist_orders_dataset.csv'
IAM_ROLE 'YOURIAMROLE'
FORMAT AS csv
IGNOREHEADER 1;



--copy sellers
COPY sellers FROM 's3://ecomdatawarehouse/olist_sellers_dataset.csv'
IAM_ROLE 'YOURIAMROLE'
FORMAT AS csv
IGNOREHEADER 1;

--copy products
COPY products FROM 's3://ecomdatawarehouse/olist_products_dataset.csv'
IAM_ROLE 'YOURIAMROLE'
FORMAT AS csv
IGNOREHEADER 1;

--copy order_items
COPY order_items FROM 's3://ecomdatawarehouse/olist_order_items_dataset.csv'
IAM_ROLE 'YOURIAMROLE'
FORMAT AS csv
IGNOREHEADER 1;

--copy order_payments
COPY order_payments FROM 's3://ecomdatawarehouse/olist_order_payments_dataset.csv'
IAM_ROLE 'YOURIAMROLE'
FORMAT AS csv
IGNOREHEADER 1;

-- copy order_reviews
COPY order_review FROM 's3://ecomdatawarehouse/olist_order_reviews_dataset.csv'
IAM_ROLE 'YOURIAMROLE'
FORMAT AS csv
IGNOREHEADER 1;

