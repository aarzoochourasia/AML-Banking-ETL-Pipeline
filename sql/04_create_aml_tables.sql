CREATE TABLE aml_flags (
flag_id SERIAL PRIMARY KEY,
transaction_id BIGINT,
flag_reason VARCHAR(100),
risk_score INT,
flag_timestamp TIMESTAMP
);
