USE w3schools;

SELECT * FROM Products;

-- 각 카테고리별 상품 수
SELECT CategoryID, Count(ProductID) 
FROM Products
GROUP BY CategoryID;

SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID)
FROM
Products p JOIN Categories c 
ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryID
;