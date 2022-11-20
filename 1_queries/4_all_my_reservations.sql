SELECT reservations.id, title, start_date, cost_per_night, AVG(rating) as average_rating from reservations
JOIN properties on properties.id = property_id
JOIN users on users.id = reservations.guest_id
JOIN property_reviews on users.id = property_reviews.guest_id
WHERE email = 'tristanjacobs@gmail.com'
GROUP BY reservations.id, properties.id
ORDER BY start_date ASC
LIMIT 10;