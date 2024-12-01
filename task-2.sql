SELECT 
    f.title AS FilmTitle, 
    f.duration AS Duration, 
    c.name AS Category
FROM 
    films f
JOIN 
    categories c ON f.category_id = c.id;
SELECT 
    f.title AS FilmTitle, 
    r.rental_date AS RentalDate
FROM 
    rentals r
JOIN 
    films f ON r.film_id = f.id
JOIN 
    customers c ON r.customer_id = c.id
WHERE 
    c.name = 'Natali'
SELECT 
    f.title AS FilmTitle, 
    COUNT(r.id) AS RentalCount
FROM 
    rentals r
JOIN 
    films f ON r.film_id = f.id
GROUP BY 
    f.title
ORDER BY 
    RentalCount DESC
LIMIT 5;
INSERT INTO customers (name, address, city) 
VALUES ('Natali', 'Schevchenko street', 'Kyiv');
UPDATE customers
SET address = 'Schevchenko street'
WHERE name = 'Natali';
DELETE FROM customers
WHERE name = 'Natali';
