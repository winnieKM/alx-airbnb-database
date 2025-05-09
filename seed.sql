-- Insert Sample Users
INSERT INTO Users (username, email, password_hash)
VALUES 
    ('john_doe', 'john@example.com', 'password123'),
    ('jane_smith', 'jane@example.com', 'password456');

-- Insert Sample Properties
INSERT INTO Properties (user_id, title, description, price, location)
VALUES 
    (1, 'Cozy Apartment in Downtown', 'A beautiful 2-bedroom apartment', 100.00, 'Downtown'),
    (2, 'Beachside Villa', 'Luxurious villa with ocean view', 500.00, 'Beachfront');

-- Insert Sample Bookings
INSERT INTO Bookings (property_id, user_id, start_date, end_date, total_price)
VALUES 
    (1, 2, '2025-06-01', '2025-06-07', 600.00),
    (2, 1, '2025-06-10', '2025-06-15', 2500.00);

-- Insert Sample Payments
INSERT INTO Payments (booking_id, amount)
VALUES 
    (1, 600.00),
    (2, 2500.00);
