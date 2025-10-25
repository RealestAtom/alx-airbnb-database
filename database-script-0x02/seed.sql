-- ===========================================
-- Airbnb Database Sample Data
-- Author: Evans
-- Project: ALX Airbnb Database
-- ===========================================

-- Clear old data (useful during testing)
DELETE FROM Message;
DELETE FROM Review;
DELETE FROM Payment;
DELETE FROM Booking;
DELETE FROM Property;
DELETE FROM User;

-- ===========================================
-- INSERT DATA INTO USER TABLE
-- ===========================================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
    ('11111111-1111-1111-1111-111111111111', 'Evans', 'Mensah', 'evans@example.com', 'hashed_pass1', '+233541234567', 'host'),
    ('22222222-2222-2222-2222-222222222222', 'Ama', 'Owusu', 'ama@example.com', 'hashed_pass2', '+233501112223', 'guest'),
    ('33333333-3333-3333-3333-333333333333', 'Kojo', 'Asare', 'kojo@example.com', 'hashed_pass3', '+233201114455', 'guest'),
    ('44444444-4444-4444-4444-444444444444', 'Akua', 'Appiah', 'akua@example.com', 'hashed_pass4', '+233509988776', 'host');

-- ===========================================
-- INSERT DATA INTO PROPERTY TABLE
-- ===========================================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
    ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'Modern Apartment', 'A modern 2-bedroom apartment in Accra.', 'Accra', 350.00),
    ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '44444444-4444-4444-4444-444444444444', 'Beachside Villa', 'A spacious villa with an ocean view.', 'Cape Coast', 500.00),
    ('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 'Budget Room', 'Affordable private room for travelers.', 'Kumasi', 150.00);

-- ===========================================
-- INSERT DATA INTO BOOKING TABLE
-- ===========================================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
    ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', '2025-10-10', '2025-10-15', 1750.00, 'confirmed'),
    ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', '2025-11-01', '2025-11-05', 2000.00, 'pending'),
    ('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 'aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', '2025-12-20', '2025-12-25', 750.00, 'confirmed');

-- ===========================================
-- INSERT DATA INTO PAYMENT TABLE
-- ===========================================
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
    ('ccccccc1-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 1750.00, 'credit_card'),
    ('ccccccc2-cccc-cccc-cccc-cccccccccccc', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbbb', 750.00, 'paypal');

-- ===========================================
-- INSERT DATA INTO REVIEW TABLE
-- ===========================================
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
    ('ddddddd1-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 5, 'Amazing apartment and great host!'),
    ('ddddddd2-dddd-dddd-dddd-dddddddddddd', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '33333333-3333-3333-3333-333333333333', 4, 'Beautiful villa, but quite pricey.');

-- ===========================================
-- INSERT DATA INTO MESSAGE TABLE
-- ===========================================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
    ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeeee', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hello, is the Modern Apartment available next week?'),
    ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeeee', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Yes, it is available. Would you like to book it?');
