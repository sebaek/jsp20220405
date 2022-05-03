USE w3schools;

-- Orders : 주문
-- Customers : 고객
-- 주문한 적 없는 고객 명 조회
SELECT c.CustomerName
FROM Customers c LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
WHERE o.OrderID IS NULL
ORDER BY 1
; 