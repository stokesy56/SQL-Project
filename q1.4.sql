--Selects categoryID, category name and the number(count) of products in each category 
--Achieved thorugh a JOIN between products and categories tables so that category name is included in table
SELECT p.CategoryID, c.CategoryName, COUNT(p.ProductID) AS 'Number of Products'  FROM Products p
JOIN Categories c ON c.CategoryID = p.CategoryID
GROUP BY p.CategoryID, c.CategoryName
ORDER BY 'Number of Products' DESC
