# Partitioning Performance Report

## Objective
To optimize queries on the large `bookings` table by partitioning it based on the `start_date` column.

## Implementation
- A new table `bookings_partitioned` was created using **RANGE partitioning** on `start_date`.
- Partitions were created for each year (2022–2025).
- Queries were tested using `EXPLAIN ANALYZE` before and after partitioning.

## Results
- Before partitioning, the query scanned the entire `bookings` table.
- After partitioning, the database only scanned relevant partitions (e.g., `bookings_2023`), reducing I/O.
- Execution time improved significantly for date-range queries.

## Conclusion
Table partitioning greatly improved query performance for time-based data.  
Future maintenance will involve adding new yearly partitions as data grows.
