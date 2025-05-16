# Task 0: Write Complex Queries with Joins

This file contains SQL queries that demonstrate different types of joins used in the Airbnb database schema.

- **INNER JOIN**: Retrieves all bookings and their respective users.
- **LEFT JOIN**: Retrieves all properties and their reviews, including properties without reviews.
- **FULL OUTER JOIN**: Retrieves all users and all bookings, including unmatched records. Implemented using a UNION of LEFT and RIGHT joins because MySQL lacks FULL OUTER JOIN support.

## Queries Included:

- **INNER JOIN**: List of all bookings and the users who made them.
- **LEFT JOIN**: All properties with any associated reviews (or none).
- **FULL OUTER JOIN**: All users and all bookings, even if not connected.

> Note: Some databases like MySQL don't support FULL OUTER JOIN. You can simulate it using `UNION` of LEFT and RIGHT JOINs.

---

# Task 1: Write Subqueries

This task focuses on using subqueries to filter and analyze data.

## Queries Included:

- **Users with more than 2 bookings** (non-correlated).
- **Properties with average rating above 4.5** (correlated).
- **Latest review per property** (correlated).

---

# Task 2: Aggregations and Window Functions

This task focuses on using SQL aggregation and window functions to analyze user and property activity.

## Queries Included:

- Booking count per user.
- Total earnings per property.
- Ranking properties by average rating.
- Row numbers of bookings per user based on start date.
