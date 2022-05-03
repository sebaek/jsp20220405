USE w3schools;

-- 주문한 적 없는 고객명 조회(JOIN, SUB QUERY)
-- Orders, Customers
-- JOIN
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o
ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1;

-- SUB QUERY
SELECT CustomerName
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM Orders)
ORDER BY 1;



-- 고객별 주문 수 (JOIN, SUB QUERY)
SELECT c.CustomerName, COUNT(o.OrderID) NumOfOrders
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID
ORDER BY 1;

SELECT c.CustomerName, 
       (SELECT COUNT(o.OrderID) FROM Orders o WHERE o.CustomerID = c.CustomerID) AS NumOfOrders
FROM Customers c
ORDER BY 1;









