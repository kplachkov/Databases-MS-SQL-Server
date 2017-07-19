/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [FirstName] + ' ' + [LastName] AS [Full Name]
	  ,[JobTitle]
      ,[Salary]
  FROM [DatabaseExample].[dbo].[Employees]
  WHERE Salary BETWEEN 30000 AND 40000  

  SELECT DISTINCT JobTitle  -- DISTINCT eliminates the duplicate results
  FROM Employees

  SELECT [FirstName] + ' ' + [LastName] AS [Full Name]
	  ,[JobTitle]
      ,[Salary]
	  ,HireDate
  FROM [DatabaseExample].[dbo].[Employees]
  WHERE DepartmentID In (1, 3) AND Salary > 40000

  SELECT [FirstName] + ' ' + [LastName] AS [Full Name]
	  ,[JobTitle]
      ,[Salary]
	  ,HireDate
  FROM [DatabaseExample].[dbo].[Employees]
  WHERE ManagerID IS NULL

  SELECT * FROM v_TopTenHighestSalaries



