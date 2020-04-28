SELECT 
    count(film_id), rating
FROM
    film
GROUP BY
    rating
;