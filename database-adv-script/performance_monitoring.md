# Database Performance Monitoring and Refinement Report

## Objective
To continuously monitor and refine the performance of the Airbnb database by analyzing query execution plans and making schema adjustments where necessary.

---

## Step 1: Monitoring Queries Using EXPLAIN ANALYZE
We monitored some of the most frequently used queries, including:
```sql
EXPLAIN ANALYZE
SELECT b.booking_id, u.first_name, u.last_name, p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE p.location = 'Accra' AND b.status = 'confirmed';
-- Create an index on property location
CREATE INDEX idx_properties_location ON properties(location);

-- Create a composite index on user_id and status in bookings
CREATE INDEX idx_bookings_user_status ON bookings(user_id, status);
EXPLAIN ANALYZE
SELECT b.booking_id, u.first_name, u.last_name, p.name AS property_name
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
WHERE p.location = 'Accra' AND b.status = 'confirmed';
