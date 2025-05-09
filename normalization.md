# Database Normalization - 3NF

This document describes the normalization steps applied to the Airbnb database schema to achieve Third Normal Form (3NF).

## Step 1: Identify Redundancies and Dependencies

- Initially, the database was in an unnormalized state, where multiple columns contained redundant data.
- For example, the user's address and contact details were stored in the same table, leading to repetition.

## Step 2: Apply 1st Normal Form (1NF)

- The first step was to eliminate duplicate records and ensure that each column in the table contains atomic values.
- This means that no column contains multiple values or sets of values (e.g., a column containing both a phone number and an email address was split into separate columns).

## Step 3: Apply 2nd Normal Form (2NF)

- The second step was to remove partial dependencies.
- We ensured that every non-prime attribute (i.e., attribute that is not part of any primary key) is fully dependent on the entire primary key.
- For instance, properties and bookings were separated, as properties could be associated with multiple bookings.

## Step 4: Apply 3rd Normal Form (3NF)

- The third step removed transitive dependencies, where non-prime attributes depend on other non-prime attributes.
- For example, separating the `City` from `User` and `Property` tables to eliminate the dependency of city information on a user.

By applying these steps, we ensured that the database is free from redundancy, update anomalies, and maintains data integrity.
