--Selects all the rows that have 'bottles' in the string in Column QuantityPerUnit 
SELECT * FROM Products
WHERE QuantityPerUnit LIKE '%bottles%'