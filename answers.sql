-- Get firstName, lastName, email, and officeCode of all employees
-- Using INNER JOIN between employees and offices on officeCode
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees AS e
INNER JOIN offices AS o
    ON e.officeCode = o.officeCode;

-- Get productName, productVendor, and productLine
-- Using LEFT JOIN between products and productlines on productLine
SELECT p.productName, p.productVendor, p.productLine
FROM products AS p
LEFT JOIN productlines AS pl
    ON p.productLine = pl.productLine;

-- Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders
-- Using RIGHT JOIN between customers and orders on customerNumber
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
