-- JOIN PRACTICE - QUESTION 5
-- Customer Information and Full Address
-- Provide a list of all customers including:
--   - First and last name
--   - Store
--   - Active/inactive status
--   - Street address
--   - City
--   - Country
-- Table relationships:
-- customer -> address: address_id
-- address -> city: city_id
-- city -> country: country_id

SELECT
    customer.first_name AS name,
    customer.last_name AS surname,
    customer.store_id AS store,
    CASE
        WHEN customer.active = 1 THEN 'active'
        ELSE 'inactive'
    END AS activity,
    address.address,
    city.city,
    country.country
FROM customer
INNER JOIN address
    ON customer.address_id = address.address_id
INNER JOIN city
    ON address.city_id = city.city_id
INNER JOIN country
    ON city.country_id = country.country_id;
