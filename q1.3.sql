--Selects all the rows that have 'bottles' in the string in Column QuantityPerUnit from product name, product id, company name and country columns
-- where the suppliers and products tables have been joined by supplierID
SELECT p.ProductID, p.ProductName, s.CompanyName AS 'SupplierName', s.Country FROM Products p
JOIN Suppliers s ON s.SupplierID = p.SupplierID
WHERE p.QuantityPerUnit LIKE '%bottles%'

