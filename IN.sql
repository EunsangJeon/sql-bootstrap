# IN(), comparison operators, HAVING 

# number of rentals in the Comedy, Sports and Family
SELECT
    c.name as category, count(r.rental_id) as num_rentals
FROM
    rental r,
    inventory i,
    film f,
    film_category fc, 
    category c
WHERE
    r.inventory_id = i.inventory_id
    AND i.film_id = f.film_id
    AND f.film_id = fc.film_id
    AND fc.category_id = c.category_id
    AND c.name in ("Comedy", "Sports", "Family")
GROUP BY
    1
;

# comparison operators
# users who have rented at least 3 times
# HAVING must be put on the rear as it works like filter

SELECT
    r.customer_id as customer, count(r.rental_id) as num_rentals
FROM
    rental r
GROUP BY
    1
HAVING
    count(r.rental_id) >= 3
;