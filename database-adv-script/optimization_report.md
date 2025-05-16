## Optimization Report

### 1. Initial Complex Query

We used the following query to retrieve booking records along with related user, property, and payment details:

```sql
SELECT
    b.*,
    u.*,
    p.*,
    pay.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
INNER JOIN properties p ON b.property_id = p.id
INNER JOIN payments pay ON b.payment_id = pay.id;
```
