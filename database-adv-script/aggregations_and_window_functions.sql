-- 1. Aggregation: Total number of bookings made by each user
SELECT 
    users.id AS user_id,
    users.first_name,
    users.last_name,
    COUNT(bookings.id) AS total_bookings
FROM users
LEFT JOIN bookings
ON users.id = bookings.user_id
GROUP BY users.id, users.first_name, users.last_name
ORDER BY total_bookings DESC;

-- 2. Window Function: Rank properties by total number of bookings (using RANK)
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    COUNT(bookings.id) AS total_bookings,
    RANK() OVER (ORDER BY COUNT(bookings.id) DESC) AS booking_rank
FROM properties
LEFT JOIN bookings
ON properties.id = bookings.property_id
GROUP BY properties.id, properties.name
ORDER BY booking_rank;

-- 3. Window Function: Assign a unique row number to each property based on total bookings (using ROW_NUMBER)
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    COUNT(bookings.id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(bookings.id) DESC) AS row_number_position
FROM properties
LEFT JOIN bookings
ON properties.id = bookings.property_id
GROUP BY properties.id, properties.name
ORDER BY row_number_position;
