INSERT INTO aml_flags
SELECT
transaction_id,
'Large Transaction',
90,
CURRENT_TIMESTAMP
FROM transactions_enriched
WHERE is_large_transaction = TRUE;

INSERT INTO aml_flags
SELECT
transaction_id,
'Rapid Repeated Transfer',
75,
CURRENT_TIMESTAMP
FROM transactions_enriched
WHERE source_account IN (
SELECT source_account
FROM transactions_enriched
GROUP BY source_account
HAVING COUNT(*) > 1
);

INSERT INTO aml_flags
SELECT
transaction_id,
'Cross Border Transaction',
60,
CURRENT_TIMESTAMP
FROM transactions_enriched
WHERE currency <> 'USD';
