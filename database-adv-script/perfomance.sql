-- ===========================================
-- INITIAL QUERY (Unoptimized)
-- ===========================================

-- Retrieve all bookings with user, property, and payment details
-- No filters, using SELECT * (less efficient)
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
JOIN payments pay ON b.booking_id = pay.booking_id
WHERE p.location = 'Accra' AND pay.status = 'completed';


-- ===========================================
-- OPTIMIZED QUERY
-- ===========================================

-- More efficient version with explicit columns, LEFT JOIN for optional data,
-- and filtering conditions that use indexes
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.first_name,
    u.last_name,
    p.name AS property_name,
    pay.amount,
    pay.status
FROM bookings b
INNER JOIN users u ON b.user_id = u.user_id
INNER JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE p.location = 'Accra' AND pay.status = 'completed';
