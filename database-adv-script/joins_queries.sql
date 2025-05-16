-- INNER JOIN example
SELECT booking.*, user.*
FROM booking
INNER JOIN user ON booking.user_id = user.id;

-- LEFT JOIN: All properties and their reviews (even if there are no reviews)
SELECT property.*, review.*
FROM property
LEFT JOIN review ON property.id = review.property_id;


-- FULL OUTER JOIN example using UNION for MySQL
SELECT user.*, booking.*
FROM user
LEFT JOIN booking ON user.id = booking.user_id

UNION

SELECT user.*, booking.*
FROM user
RIGHT JOIN booking ON user.id = booking.user_id;





