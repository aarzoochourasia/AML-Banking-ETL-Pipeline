CREATE TABLE transactions_enriched (
transaction_id BIGINT PRIMARY KEY,
source_account BIGINT,
destination_account BIGINT,
transaction_amount DECIMAL(18,2),
currency VARCHAR(10),
transaction_timestamp TIMESTAMP,
amount_usd DECIMAL(18,2),
is_large_transaction BOOLEAN
);
