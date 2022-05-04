USE w3schools;

SELECT * FROM Orders;
-- 1996-07-04 에 주문한 고객의 이름
SELECT o.OrderDate, c.CustomerName, o.EmployeeID
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-04';
;
-- 1996-07-04 에 주문한 고객의 이름과, 처리한 직원의 이름
SELECT o.OrderDate, c.CustomerName, concat(e.FirstName, ' ' , e.LastName) EmployeeName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
              JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 의 주문을 처리한 직원명과 배송자명 조회
-- Orders, Employees, Shippers
SELECT o.OrderDate, e.LastName, s.ShipperName
FROM Orders o JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-04 에 주문한 고객과, 처리한 직원, 배송한 배송자명
-- Orders, Customers, Employees, Shippers
SELECT o.OrderDate, c.CustomerName, e.LastName, s.ShipperName
FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID
              JOIN Employees e ON o.EmployeeID = e.EmployeeID
              JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderDate = '1996-07-08';

-- 1996-07-04에 주문한 상품명(들)
-- OrderDetails, Orders, Products
SELECT o.OrderDate, p.ProductName, d.Quantity, p.Price, (d.Quantity * p.Price) total
FROM OrderDetails d JOIN Orders o ON d.OrderID = o.OrderID
                    JOIN Products p ON d.ProductID = p.ProductID
WHERE o.OrderDate = '1996-07-04';

-- 1996-07-08에 각 고객의 주문 총액
-- Orders, OrderDetails, Products, Customers
SELECT * FROM Orders WHERE OrderDate = '1996-07-08';

SELECT o.OrderDate, c.CustomerName, sum(p.Price * d.Quantity) '총계'
FROM Orders o JOIN OrderDetails d ON o.OrderID = d.OrderID
              JOIN Products p ON d.ProductID = p.ProductID
              JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE o.OrderDate = '1996-07-08'
GROUP BY c.CustomerID
;









