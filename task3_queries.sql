SELECT * FROM Orders;

SELECT *
FROM Orders
WHERE Sales > 500;

SELECT *
FROM Orders
ORDER BY Sales DESC;

SELECT Category,
SUM(Sales) AS TotalSales
FROM Orders
GROUP BY Category;

SELECT AVG(Sales) AS AverageSales
FROM Orders;

SELECT *
FROM Orders
WHERE Sales >
(
SELECT AVG(Sales)
FROM Orders
);

CREATE VIEW HighSales AS
SELECT *
FROM Orders
WHERE Sales > 1000;

SELECT * FROM HighSales;

CREATE INDEX idx_sales
ON Orders(Sales);