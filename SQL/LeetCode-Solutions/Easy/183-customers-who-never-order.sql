-- Problem 183 : Customers Who Never Order (Easy)
-- Dialect : PostgreSQL
-- Approach : LEFT JOIN

SELECT
    Customers.name AS Customers
FROM Customers
LEFT JOIN Orders ON Customers.id = Orders.customerId
WHERE Orders.id IS NULL;
