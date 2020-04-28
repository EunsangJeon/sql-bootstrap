SELECT
    film.title, category.name, language.name
FROM
    film, language, film_category, category
WHERE
    film.language_id = language.language_id and film.film_id = film_category.film_id and film_category.category_id = category.category_id
;