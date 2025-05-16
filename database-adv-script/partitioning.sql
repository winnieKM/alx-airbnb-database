-- Drop and recreate the bookings table with partitioning by year of start_date
DROP TABLE IF EXISTS bookings;

CREATE TABLE bookings (
    id INT NOT NULL,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    payment_id INT,
    status VARCHAR(50),
    start_date DATE,
    end_date DATE,
    PRIMARY KEY (id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2022 VALUES LESS THAN (2023),
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);
-- Run EXPLAIN to analyze performance of date-range filtering
EXPLAIN SELECT * FROM bookings WHERE start_date BETWEEN '2023-01-01' AND '2023-12-31';
