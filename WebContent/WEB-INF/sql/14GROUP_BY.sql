USE w3schools;

SELECT * FROM Customers;
SELECT COUNT(CustomerID) FROM Customers;
SELECT COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country;
SELECT Country, COUNT(CustomerID) FROM Customers GROUP BY Country ORDER BY Country;
SELECT Country, COUNT(CustomerID) count 
FROM Customers 
GROUP BY Country 
ORDER BY count, Country;