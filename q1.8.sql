SELECT DISTINCT OrderID, Discount FROM [Order Details] --using distinct to remove duplicate orderID's
WHERE Discount = (SELECT MAX(Discount) FROM [Order Details]) --used a subquery so that i could get back repeat max values