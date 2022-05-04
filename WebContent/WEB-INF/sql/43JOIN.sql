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
