INSERT INTO customers_clean
SELECT
customer_id,
INITCAP(first_name),
INITCAP(last_name),
date_of_birth,
UPPER(country),
UPPER(risk_category),
created_at
FROM customers_raw;

INSERT INTO accounts_clean
SELECT
account_id,
customer_id,
UPPER(account_type),
UPPER(currency),
branch_id,
created_at,
UPPER(status)
FROM accounts_raw;

INSERT INTO transactions_clean
SELECT
transaction_id,
source_account,
destination_account,
transaction_amount,
UPPER(currency),
transaction_timestamp
FROM transactions_raw
WHERE transaction_amount > 0;
