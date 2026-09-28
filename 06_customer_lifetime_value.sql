-- List customer names, total lifetime rentals, and total payments
-- Order customers by total lifetime value, highest first

SELECT
    CONCAT(customer.first_name, ' ', customer.last_name) AS 'full name',
    COUNT(rental.rental_id) AS rental_total,
    SUM(payment.amount) AS payment_total
FROM customer
INNER JOIN rental
    ON customer.customer_id = rental.customer_id
INNER JOIN payment
    ON rental.rental_id = payment.rental_id
GROUP BY customer.customer_id
ORDER BY payment_total DESC;
