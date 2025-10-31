-- 1. INNER JOIN: Retrieve all bookings and the users who made them
SELECT 
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.check_in_date,
    bookings.check_out_date,
    users.id AS user_id,
    users.first_name,
    users.last_name,
    users.email
FROM bookings
INNER JOIN users
ON bookings.user_id = users.id;

-- 2. LEFT JOIN: Retrieve all properties and their reviews
SELECT 
    properties.id AS property_id,
    properties.name AS property_name,
    reviews.id AS review_id,
    reviews.comment,
    reviews.rating
FROM properties
LEFT JOIN reviews
ON properties.id = reviews.property_id;

-- 3. FULL OUTER JOIN: Retrieve all users and bookings (even if not linked)
SELECT 
    users.id AS user_id,
    users.first_name,
    users.last_name,
    bookings.id AS booking_id,
    bookings.property_id,
    bookings.check_in_date,
    bookings.check_out_date
FROM users
FULL OUTER JOIN bookings
ON users.id = bookings.user_id;
