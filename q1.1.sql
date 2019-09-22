--Selects customerid, company name, Address (concatenated) with entries only from city as london or paris
SELECT CustomerID, CompanyName, Address + ', ' + City + ', ' + PostalCode + ', ' + Country AS 'Address' FROM Customers
WHERE City = 'Paris' OR City = 'London' 
