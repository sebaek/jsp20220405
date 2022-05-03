USE w3schools;
DESC Products;
SELECT * FROM Products;
DESC Categories;
SELECT * FROM Categories;

SELECT * FROM Products JOIN Categories; -- Cartesian Product
SELECT * FROM Products JOIN Categories ON Products.CategoryID = Categories.CategoryID; -- INNER JOIN

-- Products 테이블과 Suppliers 테이블 SupplierID 컬럼이 같은 것 끼리 INNER JOIN한 결과 조회
SELECT * FROM Products JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

-- 별칭과 같이 사용
SELECT * FROM Products AS p JOIN Suppliers AS s ON p.SupplierID = s.SupplierID;
SELECT * FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;
