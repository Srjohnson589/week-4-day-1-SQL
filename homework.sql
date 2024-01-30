-- 1. How many actors are there with the last name ‘Wahlberg’?

SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

-- There are two actors, Nick and Daryl with this last name


-- 2. How many payments were made between $3.99 and $5.99?

SELECT COUNT(payment)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;

-- I am showing 5602 payments made that were between those amounts


-- 3. What film does the store have the most of? (search in inventory)

SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;

-- The store has about 73 films that have 8 copies (the max number of copies we have)

-- 4. How many customers have the last name ‘William’?

SELECT DISTINCT last_name
FROM customer
WHERE last_name = 'William';

-- There are no customers with this last name in our database

-- 5. What store employee (get the id) sold the most rentals?

SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(rental_id) DESC;

-- The employee with staff_id 1 sold 8040 rentals followed by staff_id 2 who did 8004

-- 6. How many different district names are there?

SELECT COUNT(DISTINCT district)
FROM address;

--There are 378 different district names.

-- 7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;

-- Film ID: 508 has 15 actors in it, the max of any other film.

-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT DISTINCT COUNT(last_name)
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--There are 13 customers from store id 1 that have the last names ending in 'es'

-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)



-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?

