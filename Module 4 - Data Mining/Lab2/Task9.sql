USE sakila;

SELECT concat_ws("", first_name, last_name), address_id
FROM customer;