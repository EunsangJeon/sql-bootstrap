-- # all colums from active customers (active = 0)
-- # and phone number from the address
-- # customer_id, ... , active, phone_number

-- SELECT 
--   c.*,
--   a.phone
-- FROM
--   address a, customer c
-- WHERE
--   c.active = 1
--   AND c.address_id = a.address_id

SELECT 
  c.*,
  a.phone
FROM
  customer c JOIN address a ON c.address_id = a.address_id
WHERE
  c.active = 1
GROUP BY
  1
;

SELECT
  r.customer_id,
  count(r.rental_id) as num_rentals,
  max(rental_date)
FROM
  rental r
GROUP BY 1
HAVING num_rentals >= 30
;
