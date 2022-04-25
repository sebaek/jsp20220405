USE w3schools;

SELECT * FROM Customers;
SELECT * FROM Customers WHERE Country = 'Brazil';
SELECT * FROM Customers WHERE Country = 'Brazil' AND City = 'Rio de Janeiro';

SELECT * FROM Customers WHERE Country = 'Germany' OR City = 'London';

SELECT * FROM Customers WHERE NOT Country = 'Germany';