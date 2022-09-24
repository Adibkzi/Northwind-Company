-- Select the Company Name, Contact Name, Phone, and Fax Number fields from the Customers table.  Sort by Company
SELECT CompanyName, ContactName, phone, Fax 
FROM dbo.customers
ORDER BY CompanyName

-- Select all records from the Products table.  Sort by Unit Price in descending order, then by Product ID.
SELECT *
FROM dbo.Products
ORDER BY UnitPrice DESC, ProductID  

-- find the total number of employees.  Alias the column as Total Employees.
SELECT COUNT(EmployeeID) AS Total_Employees
FROM dbo.Employees


--Display the category id and average unit price for the products in the Products table.  Group by category, then sort by unit price in ascending order.
SELECT CategoryID, AVG(UnitPrice) AS [Average Price Per Category]
FROM Products
GROUP BY CategoryID
ORDER BY AVG(UnitPrice)

--Find the most expensive product, and total number of products in the Products table.
SELECT MAX(UnitPrice) as [Most Expensive], COUNT(*) AS [Total # of  Products]
FROM dbo.Products

-- Find out how many months it has been since the orders have shipped.  Use the Orders table.
SELECT DATEDIFF(M,ShippedDate,GETDATE()) AS [Months Passed]
FROM dbo.Orders

-- Using the Orders table, calculate the due date of the payments by adding 30 days to the Order Date field.
SELECT OrderDate, DATEADD(d, 30, OrderDate) AS [Payment Due]
FROM Orders

-- Using the Orders table, convert the Order Date field to be displayed with a Mon dd, yyyy format.
SELECT CONVERT(VARCHAR(20),ORDERDATE, 107) AS [Order Date]
FROM Orders

