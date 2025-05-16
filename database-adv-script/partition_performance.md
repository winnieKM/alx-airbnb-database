# Partitioning Performance Report

## Objective:

To improve performance when querying large booking datasets by partitioning the `bookings` table on the `start_date` column.

## Partitioning Strategy:

We used `PARTITION BY RANGE (YEAR(start_date))` to split the data into multiple partitions based on year.

## Performance Observation:

Using `EXPLAIN`, we observed that queries filtered by date range (`start_date BETWEEN '2023-01-01' AND '2023-12-31'`) accessed only the relevant partition, rather than scanning the entire table. This reduced the number of rows scanned and improved query efficiency.

## Conclusion:

Partitioning by `start_date` significantly improves query performance for date-based filtering in large datasets.
