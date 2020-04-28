-- SELECT
--     count(title), rental_rate
-- FROM
--     film
-- GROUP BY
--     rental_rate
-- ;

# Above query equals to below
-- SELECT
--     count(title), rental_rate
-- FROM
--     film
-- GROUP BY
--     2
-- ;

SELECT 
    count(FID), rating, price
FROM
    film_list
GROUP BY
    rating, price
;