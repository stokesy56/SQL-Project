--counts the number of rows in orders that are greater than 100 and in either UK or USA
SELECT COUNT(*) FROM Orders 
WHERE Freight > 100 AND (ShipCountry = 'UK' OR ShipCountry = 'USA') 

