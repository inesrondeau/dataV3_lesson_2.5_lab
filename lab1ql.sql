SELECT*
FROM sakila.actor
WHERE first_name='Scarlett';
SELECT COUNT(*)
FROM sakila.rental;
SELECT COUNT(*)
FROM sakila.film;
SELECT*
FROM sakila.rental;
SELECT*
FROM sakila.film;
SELECT  MAX(length) as 'max_duration', MIN(length) as 'min_duration'
FROM sakila.film;
SELECT SEC_TO_TIME(AVG(length)*60) as 'average_duration'
FROM sakila.film;
SELECT COUNT(DISTINCT last_name)
FROM sakila.actor;
SELECT MAX(rental_date)
FROM sakila.rental;
SELECT DATEDIFF(MAX(rental_date),MIN(rental_date)) as 'days operating'
FROM sakila.rental;
SELECT*, date_format(rental_date,'%a') as 'weekday' ,date_format(rental_date,'%M') as 'month'
FROM sakila.rental
LIMIT 20;
SELECT* ,
CASE
WHEN date_format(rental_date,'%a') in ('Mon', 'Tue', 'Wed','Thu','Fry') then 'Weekday'
ELSE 'Weekend'
END as 'day_type'
FROM sakila.rental;
SELECT title, release_year
FROM sakila.film;
SELECT title
FROM sakila.film
WHERE title LIKE '%ARMAGEDDON%';
SELECT title
FROM sakila.film
WHERE title LIKE '%APOLLO';
SELECT title, length
FROM sakila.film
ORDER BY length DESC
LIMIT 10;
SELECT COUNT(special_features) as 'Behind the scenes included'
FROM sakila.film
WHERE special_features LIKE '%Behind the Scenes%';
