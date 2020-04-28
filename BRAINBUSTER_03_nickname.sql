SELECT
    f.title, c.name, l.language_id
FROM
    film f, language l, film_category fc, category c
WHERE
    f.language_id = l.language_id and f.film_id = fc.film_id and fc.category_id = c.category_id
;