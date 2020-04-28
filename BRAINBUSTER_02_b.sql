SELECT 
    count(film_id), rating, rental_rate
FROM
    film
GROUP BY
    rating, rental_rate
;