SELECT
  ac.customer_id,
  ac.fav_color,
  rc.num_puchases
FROM
  active_customer ac,
  reward_customer rc
WHERE
  ac.customer_id = rc.customer_id
;

-- JOIN example

SELECT
  ac.customer_id,
  ac.fav_color,
  rc.num_puchases
FROM
  active_customer ac 
  JOIN reward_customer rc 
  ON ac.customer_id = rc.customer_id
;

-- LEFT JOIN

SELECT
  ac.customer_id,
  ac.fav_color,
  rc.num_puchases
FROM
  active_customer ac 
  LEFT JOIN reward_customer rc 
  ON ac.customer_id = rc.customer_id