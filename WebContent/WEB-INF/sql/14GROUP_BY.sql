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

DESC Customers;
INSERT INTO Customers (CustomerName, City)
VALUES ('SON', 'Seoul');

-- 가장 많은 고객이 있는 도시(city)를 조회
SELECT City, COUNT(CustomerID) count FROM Customers
GROUP BY City
HAVING count =
(
	SELECT COUNT(CustomerID) count
	FROM Customers
	GROUP BY City
	ORDER BY count DESC
	LIMIT 1
)
;