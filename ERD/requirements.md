# ER Diagram for ALX Airbnb Project

This diagram illustrates the database schema for an Airbnb-like application, showing entities and their relationships.

## Entities

- **User**: id, name, email, password
- **Property**: id, title, description, address, host_id
- **Booking**: id, user_id, property_id, start_date, end_date
- **Payment**: id, booking_id, amount, status
- **Review**: id, user_id, property_id, rating, comment

## Relationships

- A **User** can make many **Bookings**
- A **Property** can have many **Bookings**
- A **Booking** has one **Payment**
- A **User** can write many **Reviews**
- A **Property** can have many **Reviews**

## ER Diagram

_Upload the ER diagram image (e.g., PNG) here once it's created_
