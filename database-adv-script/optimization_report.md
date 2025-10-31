# Optimization Report

## Initial Query
The initial query joined four tables (`bookings`, `users`, `properties`, and `payments`) using `SELECT *`.  
This caused unnecessary data retrieval and slower performance, as verified by `EXPLAIN ANALYZE`, which showed sequential scans on large tables.

## Issues Identified
- Too many columns selected with `SELECT *`
- All joins were INNER JOINs, including payments (not all bookings have payments)
- Missing indexes in join conditions

## Optimizations Applied
1. Replaced `SELECT *` with explicit column names.
2. Changed the `payments` join to a `LEFT JOIN`.
3. Used pre-created indexes on `user_id`, `property_id`, and `booking_id`.
4. Verified performance improvement using `EXPLAIN ANALYZE`.

## Result
After optimization:
- Execution time decreased significantly.
- Joins used index scans instead of sequential scans.
- Query is now more efficient and scalable for large datasets.
