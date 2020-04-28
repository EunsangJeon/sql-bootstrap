CREATE temporary TABLE rpc as
    SELECT 
        r.customer_id, count(distinct r.rental_id) as num_rentals
    FROM
        rental r
    GROUP BY 1
;

SELECT
    sum(p.amount) as revenue
FROM
    rpc,
    payment p
WHERE
    rpc.customer_id = p.customer_id
    AND rpc.num_rentals > 20
GROUP BY
    1
;