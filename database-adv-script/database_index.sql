-- Create index on user_id column in bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Create index on property_id column in bookings table
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Create index on email column in users table for faster lookups
CREATE INDEX idx_users_email ON users(email);

-- Create index on name column in properties table to optimize searches
CREATE INDEX idx_properties_name ON properties(name);

-- Create index on property_id column in reviews table to improve joins
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

