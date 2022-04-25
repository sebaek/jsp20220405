USE w3schools;

SELECT * FROM Customers ORDER BY ContactName; -- 조회결과 ContactName 오름차순 정렬
SELECT * FROM Customers ORDER BY City;

-- ASC : 오름차순(기본)
-- DESC : 내림차순

SELECT * FROM Customers ORDER BY ContactName ASC; -- 조회결과 ContactName 오름차순 정렬
SELECT * FROM Customers ORDER BY ContactName DESC; -- 조회결과 ContactName 내림차순 정렬

-- 여러 열 기준으로 정렬
SELECT * FROM Customers ORDER BY Country, City;
SELECT * FROM Customers ORDER BY Country ASC, City ASC;
SELECT * FROM Customers ORDER BY Country DESC, City;

-- 연습1 ) 직원(Employees)을 생일 내림차순, LastName 오름차순 정렬로 조회

