USE w3schools;

SELECT * FROM Customers LIMIT 3; -- 조회결과 중 첫번째 3개 레코드만
SELECT * FROM Customers LIMIT 10; 

SELECT * FROM Employees LIMIT 2;
SELECT * FROM Employees ORDER BY BirthDate LIMIT 2;
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 2;

-- Products 테이블 조회해서 가장 가격이 비싼 상품 3개 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 3;

-- LIMIT [부터], [몇개]
SELECT * FROM Products ORDER BY Price DESC LIMIT 0, 3;

-- Products 테이블 조회 해서 두번째로 가격이 비싼 상품부터~4번째로 가격이 비싼 상품 조회
SELECT * FROM Products ORDER BY Price DESC LIMIT 1, 3;

-- 직원 중 두번째로 나이가 많은 사람 조회
SELECT * FROM Employees ORDER BY BirthDate LIMIT 1, 1;
-- 직원 중 두번째로 나이가 어린 사람 조회
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 1, 1;







