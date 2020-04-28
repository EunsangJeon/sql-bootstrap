SELECT
    count(r.rental_id), f.film_id, f.title
FROM
    film f, rental r, inventory i
WHERE
    f.film_id = i.film_id and r.inventory_id = i.inventory_id
GROUP BY
    2
;
