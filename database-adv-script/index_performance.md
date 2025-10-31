# Index Performance Optimization

This document explains how indexes were created and how they improved query performance in the Airbnb database.

## Identified High-Usage Columns
The following columns were identified as frequently used in WHERE, JOIN, and ORDER BY clauses:
- `bookings.user_id`
- `bookings.property_id`
- `users.email`
- `properties.name`
- `reviews.property_id`

## Index Creation
Indexes were created using the following commands:

```sql
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_properties_name ON properties(name);
CREATE INDEX idx_reviews_property_id ON reviews(property_id);
