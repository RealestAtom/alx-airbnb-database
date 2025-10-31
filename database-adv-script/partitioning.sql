-- ===========================================
-- TABLE PARTITIONING IMPLEMENTATION
-- ===========================================

-- Step 1: Create a new partitioned version of the bookings table
-- Partitioned by start_date (RANGE type)
CREATE TABLE bookings_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(50),
    amount DECIMAL(10,2)
) PARTITION BY RANGE (start_date);


-- Step 2: Create partitions for different year ranges
CREATE TABLE bookings_2022 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2022-01-01') TO ('2023-01-01');

CREATE TABLE bookings_2023 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE bookings_2024 PARTITION OF bookings_partitioned
FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE bookings_future PARTITION OF bookings_partitioned
FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');


-- ===========================================
-- PERFORMANCE TESTING
-- ===========================================

-- Query before partitioning (simulated slow query)
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2023-01-01' AND '2023-03-01';

-- Query after partitioning (optimized)
EXPLAIN ANALYZE
SELECT * FROM bookings_partitioned
WHERE start_date BETWEEN '2023-01-01' AND '2023-03-01';
