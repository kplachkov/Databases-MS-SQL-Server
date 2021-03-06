/****** Script for SelectTopNRows command from SSMS  ******/

-- Retrieving Data
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

  -- IDENTITY(1, 2) - starts from 1 and increments 2

  -- INSERT command
  INSERT INTO Employees(FirstName, LastName, JobTitle, Salary, DepartmentID, HireDate)
  VALUES ('Kostadin', 'Plachkov', 'Mahine Learning Engineer', 50000, 1, '2017-06-20')

  -- Existing records into new table
  SELECT FirstName + ' ' + LastName AS 'Full Name', Salary
  INTO EmployeesSalary
  FROM Employees
  
  -- Existing records into existing table
  INSERT INTO Projects(Name, StartDate)
  SELECT Name + ' Restructuring', GETDATE()
  FROM Departments

  -- Sequences - Only for MS SQL Server
  -- Special object similar to IDENTITY field
  -- Returns an incremented value every time when it is used
  CREATE SEQUENCE seq_Customers_CustomerID
  AS int
  START WITH 1
  INCREMENT BY 1
  SELECT NEXT VALUE FOR seq_Customers_CustomerID  -- Subquery

  -- Deleting Data
  -- Deleting specific rows
  DELETE FROM Employees
  WHERE EmployeeID = 1

  -- Delete all rows from a table
  TRUNCATE TABLE Users  -- The structure is not deleted

  -- Updating Data
  UPDATE Employees
  SET Salary = Salary * 1.10,
	  JobTitle = 'Senior ' + JobTitle
  WHERE FirstName = 'Kostadin' AND LastName = 'Plachkov'

