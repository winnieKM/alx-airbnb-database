SELECT 
    b.*,      -- All columns from bookings
    u.*,      -- All columns from users
    p.*,      -- All columns from properties
    pay.*     -- All columns from payments
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
INNER JOIN properties p ON b.property_id = p.id
INNER JOIN payments pay ON b.payment_id = pay.id;

-- Initial complex query to retrieve all bookings with user and property details
SELECT 
  bookings.*,
  users.*,
  properties.*
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id;

-- Performance optimization: joining bookings, users, and properties
-- Indexes created:
CREATE INDEX idx_user_id ON bookings(user_id);:
CREATE INDEX idx_property_id ON bookings(property_id);

-- Performance analysis before optimization
EXPLAIN SELECT
  bookings.*,
  users.*,
  properties.*
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id;

-- Analyzed table to help optimizer
ANALYZE TABLE bookings;

-- Performance analysis after optimization
EXPLAIN SELECT
  bookings.*,
  users.*,
  properties.*
FROM bookings
JOIN users ON bookings.user_id = users.id
JOIN properties ON bookings.property_id = properties.id;
