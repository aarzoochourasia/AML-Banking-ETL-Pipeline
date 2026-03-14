SELECT COUNT(*) FROM transactions_raw;
SELECT COUNT(*) FROM transactions_clean;

SELECT flag_reason, COUNT(*)
FROM aml_flags
GROUP BY flag_reason;
