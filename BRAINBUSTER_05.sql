SELECT
    s.store_id as "Store ID", sum(p.amount) as "Revenue"
FROM
    payment p, rental r, inventory i, store s
WHERE
    p.rental_id = r.rental_id 
    and r.inventory_id = i.inventory_id 
    and i.store_id = s.store_id
GROUP BY
    1
ORDER BY
    2 desc
;
