-- Create index on user_id in bookings table for faster joins and queries
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id in reviews table for faster lookups
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Create index on start_date in bookings to speed up date-range queries
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
-- Explain query performance before index
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

-- Create an index to optimize queries filtering by user_id
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Explain query performance after index
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;
