--Selects employees only in UK using WHEre statement and I have concatenated their names 
SELECT TitleOfCourtesy + ' ' + FirstName + ' ' + LastName AS 'Employee Name', City FROM Employees
WHERE Country = 'UK'