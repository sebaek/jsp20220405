USE w3schools;

SELECT * FROM Customers LIMIT 3; -- 조회결과 중 첫번째 3개 레코드만
SELECT * FROM Customers LIMIT 10; 

SELECT * FROM Employees LIMIT 2;
SELECT * FROM Employees ORDER BY BirthDate LIMIT 2;
SELECT * FROM Employees ORDER BY BirthDate DESC LIMIT 2;

-- Products 테이블 조회해서 가장 가격이 비싼 상품 3개 조회
