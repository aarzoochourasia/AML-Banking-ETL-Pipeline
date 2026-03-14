CREATE TABLE customers_clean (
customer_id BIGINT PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
date_of_birth DATE,
country VARCHAR(50),
risk_category VARCHAR(20),
created_at TIMESTAMP
);

CREATE TABLE accounts_clean (
account_id BIGINT PRIMARY KEY,
customer_id BIGINT,
account_type VARCHAR(20),
currency VARCHAR(10),
branch_id INT,
created_at TIMESTAMP,
status VARCHAR(20)
);

CREATE TABLE transactions_clean (
transaction_id BIGINT PRIMARY KEY,
source_account BIGINT,
destination_account BIGINT,
transaction_amount DECIMAL(18,2),
currency VARCHAR(10),
transaction_timestamp TIMESTAMP
);
