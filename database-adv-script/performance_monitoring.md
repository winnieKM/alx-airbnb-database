# Database Performance Monitoring Report

## Objective:

To monitor and refine the performance of frequently used queries in the Airbnb database.

## Tools Used:

- `EXPLAIN ANALYZE`
- `SHOW PROFILE`
- Query execution time observation

## Monitored Query:

```sql
SELECT
    b.*, u.*, p.*, pay.*
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id
WHERE b.start_date BETWEEN '2023-01-01' AND '2023-12-31';

CREATE INDEX idx_start_date ON bookings(start_date);
CREATE INDEX idx_payment_date ON payments(payment_date);

```
