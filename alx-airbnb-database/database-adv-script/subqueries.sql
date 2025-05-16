-- Non-correlated subquery: Users with more than 2 bookings
SELECT id, name
FROM users
WHERE id IN (
  SELECT user_id
  FROM bookings
  GROUP BY user_id
  HAVING COUNT(*) > 2
);

-- Correlated subquery: Properties with average ratings above 4.5
SELECT p.id, p.name
FROM properties p
WHERE (
  SELECT AVG(r.rating)
  FROM reviews r
  WHERE r.property_id = p.id
) > 4.5;

-- Correlated subquery: Latest review per property
SELECT r1.*
FROM reviews r1
WHERE r1.created_at = (
  SELECT MAX(r2.created_at)
  FROM reviews r2
  WHERE r2.property_id = r1.property_id
);
