SELECT 
    c.name AS Category, 
    COUNT(f.id) AS FilmCount
FROM 
    films f
JOIN 
    categories c ON f.category_id = c.id
GROUP BY 
    c.name;
SELECT 
    c.name AS Category, 
    AVG(f.duration) AS AverageDuration
FROM 
    films f
JOIN 
    categories c ON f.category_id = c.id
GROUP BY 
    c.name;
SELECT 
    MIN(f.duration) AS MinDuration, 
    MAX(f.duration) AS MaxDuration
FROM 
    films f;
SELECT 
    COUNT(id) AS TotalCustomers
FROM 
    customers;
SELECT 
    c.name AS CustomerName, 
    SUM(p.amount) AS TotalPayments
FROM 
    payments p
JOIN 
    customers c ON p.customer_id = c.id
GROUP BY 
    c.name;
SELECT 
    c.name AS CustomerName, 
    SUM(p.amount) AS TotalPayments
FROM 
    payments p
JOIN 
    customers c ON p.customer_id = c.id
GROUP BY 
    c.name
ORDER BY 
    TotalPayments DESC
LIMIT 5;
SELECT 
    c.name AS CustomerName, 
    COUNT(r.id) AS RentalCount
FROM 
    rentals r
JOIN 
    customers c ON r.customer_id = c.id
GROUP BY 
    c.name;
SELECT 
    AVG(YEAR(CURRENT_DATE) - f.release_year) AS AverageFilmAge
FROM 
    films f;
SELECT 
    COUNT(r.id) AS FilmCount
FROM 
    rentals r
WHERE 
    r.rental_date BETWEEN '2024-05-10' AND '2024-08-22';
ELECT 
    DATE_FORMAT(p.payment_date, '%Y-%m') AS Month, 
    SUM(p.amount) AS TotalPayments
FROM 
    payments p
GROUP BY 
    DATE_FORMAT(p.payment_date, '%Y-%m');
SELECT 
    c.name AS CustomerName, 
    MAX(p.amount) AS MaxPayment
FROM 
    payments p
JOIN 
    customers c ON p.customer_id = c.id
GROUP BY 
    c.name;
SELECT 
    c.name AS CustomerName, 
    AVG(p.amount) AS AveragePayment
FROM 
    payments p
JOIN 
    customers c ON p.customer_id = c.id
GROUP BY 
    c.name;
SELECT 
    f.rating AS Rating, 
    COUNT(f.id) AS FilmCount
FROM 
    films f
GROUP BY 
    f.rating;
SELECT 
    s.name AS StoreName, 
    AVG(p.amount) AS AveragePayment
FROM 
    payments p
JOIN 
    stores s ON p.store_id = s.id
GROUP BY 
    s.name;
