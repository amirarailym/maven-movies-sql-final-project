-- Question 3: Inventory by Rating and Store
-- Business question:
-- Provide a summary of inventory showing how many
-- inventory items are available for each film rating
-- at each store.
-- Tables used:
-- inventory : inventory_id, film_id, store_id
-- film      : film_id, rating
-- JOIN path:
-- inventory -> film
-- GROUP BY:
-- Groups inventory by each unique combination of
-- film rating and store.

SELECT
    film.rating,
    inventory.store_id,
    COUNT(inventory.inventory_id) AS count_all_inventory
FROM inventory
INNER JOIN film
    ON film.film_id = inventory.film_id
GROUP BY
    film.rating,
    inventory.store_id;
