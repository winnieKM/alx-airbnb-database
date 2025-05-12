-- Insert Users
INSERT INTO users (id, first_name, last_name, email, password, phone_number, created_at, updated_at)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', 'hashedpassword1', '+1234567890', NOW(), NOW()),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', 'hashedpassword2', '+1234567891', NOW(), NOW()),
    (3, 'David', 'Williams', 'david.williams@example.com', 'hashedpassword3', '+1234567892', NOW(), NOW());

-- Insert Properties
INSERT INTO properties (id, user_id, name, description, location, price_per_night, created_at, updated_at)
VALUES
    (1, 1, 'Cozy Studio Apartment', 'A small cozy apartment in the city center.', 'Nairobi', 50, NOW(), NOW()),
    (2, 2, 'Luxury Penthouse', 'A spacious penthouse with a city view.', 'Cape Town', 150, NOW(), NOW()),
    (3, 3, 'Beachside Cottage', 'A relaxing cottage by the beach.', 'Durban', 100, NOW(), NOW());

-- Insert Bookings
INSERT INTO bookings (id, user_id, property_id, check_in_date, check_out_date, total_price, created_at, updated_at)
VALUES
    (1, 1, 1, '2025-06-01', '2025-06-07', 300, NOW(), NOW()),
    (2, 2, 2, '2025-07-01', '2025-07-10', 1500, NOW(), NOW()),
    (3, 3, 3, '2025-05-20', '2025-05-25', 500, NOW(), NOW());

-- Insert Payments (optional, if you have a payments table)
INSERT INTO payments (id, booking_id, amount, payment_date, payment_method, created_at, updated_at)
VALUES
    (1, 1, 300, '2025-06-01', 'Credit Card', NOW(), NOW()),
    (2, 2, 1500, '2025-07-01', 'PayPal', NOW(), NOW()),
    (3, 3, 500, '2025-05-20', 'Bank Transfer', NOW(), NOW());
