## joins_queries.sql

This file contains SQL queries demonstrating different types of joins used in the Airbnb database schema.

### Queries Included

- **INNER JOIN**: Retrieves all bookings and the respective users who made those bookings.
- **LEFT JOIN**: Retrieves all properties and their reviews, including properties that have no reviews.
- **FULL OUTER JOIN**: Retrieves all users and all bookings, even if the user has no booking or a booking is not linked to a user.  
  _Note: MySQL does not support FULL OUTER JOIN directly, so this is implemented using a UNION of LEFT and RIGHT JOINs._

---

**Usage:**  
Each query can be run independently to explore relationships between users, bookings, properties, and reviews in the database.

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
