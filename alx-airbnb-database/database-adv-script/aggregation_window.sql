-- Count bookings per user
SELECT user_id, COUNT(*) AS booking_count
FROM bookings
GROUP BY user_id;

-- Total earnings per property
SELECT property_id, SUM(amount) AS total_earnings
FROM payments
GROUP BY property_id;

-- Rank properties by average rating (highest first)
SELECT p.id, p.name,
  RANK() OVER (ORDER BY AVG(r.rating) DESC) AS rating_rank
FROM properties p
JOIN reviews r ON p.id = r.property_id
GROUP BY p.id, p.name;

-- Row number for each booking per user, ordered by date
SELECT b.*, 
  ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY start_date) AS booking_number
FROM bookings b;
