-- Question 1: Store Managers and Locations
-- Business question:
-- Identify the manager at each store and provide the
-- full address of each property, including street address,
-- district, city, and country.
-- Tables used:
-- staff   : staff_id, first_name, last_name
-- store   : store_id, manager_staff_id, address_id
-- address : address_id, address, district, city_id
-- city    : city_id, city, country_id
-- country : country_id, country
-- JOIN path:
-- staff -> store -> address -> city -> country

SELECT
    'manager' AS type,
    staff.first_name,
    staff.last_name,
    store.store_id AS store_number,
    address.address,
    address.district,
    city.city,
    country.country
FROM staff
INNER JOIN store
    ON staff.staff_id = store.manager_staff_id
INNER JOIN address
    ON store.address_id = address.address_id
INNER JOIN city
    ON address.city_id = city.city_id
INNER JOIN country
    ON city.country_id = country.country_id;
