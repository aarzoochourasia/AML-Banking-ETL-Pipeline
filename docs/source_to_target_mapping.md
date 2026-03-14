# Source to Target Mapping – Transactions

Source File: transactions_YYYYMMDD.csv

| Source Column | Target Column | Transformation |
|---------------|--------------|---------------|
| txn_id | transaction_id | direct |
| src_acc | source_account | direct |
| dest_acc | destination_account | direct |
| txn_amt | transaction_amount | cast decimal |
| currency | currency | uppercase |
| txn_time | transaction_timestamp | convert timestamp |
