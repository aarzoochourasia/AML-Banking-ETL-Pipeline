INSERT INTO transactions_enriched
SELECT
transaction_id,
source_account,
destination_account,
transaction_amount,
currency,
transaction_timestamp,

CASE
WHEN currency='USD' THEN transaction_amount
WHEN currency='EUR' THEN transaction_amount*1.1
WHEN currency='INR' THEN transaction_amount*0.012
WHEN currency='AED' THEN transaction_amount*0.27
ELSE transaction_amount
END,

CASE
WHEN transaction_amount > 10000 THEN TRUE
ELSE FALSE
END

FROM transactions_clean;
