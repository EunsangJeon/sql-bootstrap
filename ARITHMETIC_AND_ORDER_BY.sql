SELECT
    f.film_id as "Film ID", f.title as "Film Title", count(r.rental_id) * f.rental_rate as "Revenue", count(r.rental_id) as "Number of Rentals", f.rental_rate as "Rental Price"
FROM
    film f, rental r, inventory i
WHERE
    f.film_id = i.film_id and r.inventory_id = i.inventory_id
GROUP BY
    1
ORDER BY
    3 desc
;


SELECT
    p.customer_id, SUM(p.amount)
FROM
    payment p
GROUP BY
    1
ORDER BY
    2 desc
;