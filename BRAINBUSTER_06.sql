SELECT
    concat(c.first_name, " ", c.last_name) as Name, c.email as Email, max(r.rental_date) as "Last Rental Date"
FROM
    customer c, rental r
WHERE
    r.customer_id = c.customer_id
GROUP BY
    c.customer_id
;

SELECT
    left(p.payment_date, 7) as Month, sum(p.amount) as "Monthly Revenue"
FROM
    payment p
GROUP BY
    1
;