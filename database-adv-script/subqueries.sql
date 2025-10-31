-- 1. Non-correlated subquery: Find properties with average rating > 4.0
SELECT 
    id,
    name,
    location
FROM properties
WHERE id IN (
    SELECT property_id
    FROM reviews
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
)
ORDER BY id;
-- 2. Correlated subquery: Find users who made more than 3 bookings
SELECT 
    id,
    first_name,
    last_name,
    email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3
ORDER BY id;
