--Sales total per region listed if above 1000000 using four joins and the GROUP BY clause to sum total sales per region
SELECT t.RegionID, r.RegionDescription, FORMAT(SUM(od.UnitPrice*od.Quantity*(1-od.Discount)),'#######') AS 'Sales Total' FROM Territories t
JOIN Region r ON r.RegionID = t.RegionID
JOIN EmployeeTerritories e ON e.TerritoryID = t.TerritoryID
JOIN Orders o ON o.EmployeeID = e.EmployeeID
JOIN [Order Details] od ON od.OrderID = o.OrderID
GROUP BY t.RegionID, r.RegionDescription
HAVING SUM(od.UnitPrice*od.Quantity*(1-od.Discount)) > 1000000
ORDER BY 'Sales Total' DESC
