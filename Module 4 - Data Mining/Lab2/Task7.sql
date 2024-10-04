USE sakila;

SELECT concat_ws(",", last_name, LEFT(first_name, 1))
FROM customer;