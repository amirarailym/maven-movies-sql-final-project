-- Film Categories by Store
-- Analyze the inventory at each store by film category.
-- For each store and category, calculate:
--   - Number of physical film copies
--   - Average replacement cost
--   - Total replacement cost
-- Table relationships:
-- inventory -> film_category: film_id
-- film_category -> film: film_id
-- film_category -> category: category_id

SELECT
    inventory.store_id AS store,
    category.name AS category_name,
    COUNT(film_category.film_id) AS number_of_films,
    AVG(film.replacement_cost) AS average_replacement_cost,
    SUM(film.replacement_cost) AS total_replacement_cost
FROM inventory
INNER JOIN film_category
    ON inventory.film_id = film_category.film_id
INNER JOIN film
    ON film_category.film_id = film.film_id
INNER JOIN category
    ON film_category.category_id = category.category_id
GROUP BY
    inventory.store_id,
    film_category.category_id;
