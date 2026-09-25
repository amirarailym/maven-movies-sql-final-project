-- Question 2: Inventory Details
-- Business question:
-- Provide a detailed list of all inventory items currently
-- stocked, including the store, inventory ID, film title,
-- rating, rental rate, and replacement cost.
-- Tables used:
-- inventory : inventory_id, store_id, film_id
-- film      : film_id, title, rating, rental_rate,
--             replacement_cost
-- JOIN path:
-- inventory -> film

SELECT
    inventory.store_id,
    inventory.inventory_id,
    film.title,
    film.rating,
    film.rental_rate,
    film.replacement_cost
FROM inventory
INNER JOIN film
    ON inventory.film_id = film.film_id;
