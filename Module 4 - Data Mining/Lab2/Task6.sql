USE sakila;

SELECT first_name, last_name 
FROM actor 
WHERE actor_id BETWEEN 50 AND 150 
		AND last_name like "A%";