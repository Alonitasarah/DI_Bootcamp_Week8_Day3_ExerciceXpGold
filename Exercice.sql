SELECT * 
FROM rental 
WHERE return_date 
IS NULL;


SELECT customer.first_name, customer.last_name, COUNT (*) as rentals_notreturned
FROM rental
JOIN customer ON rental.customer_id = customer.customer_id
WHERE rental.return_date IS NULL
GROUP BY customer.customer_id;


SELECT film.title
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE film.rating = 'R' 
AND actor.first_name = 'Joe' 
AND actor.last_name = 'Swank' 
AND film.special_features  LIKE '%Action%';


   
CREATE VIEW joe_swank_movies AS
SELECT film.title
FROM film
JOIN film_actor ON film.film_id = film_actor.film_id
JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE actor.first_name = 'Joe' AND actor.last_name = 'Swank';

SELECT title 
FROM joe_swank_movies 
WHERE special_features LIKE '%Action%';
