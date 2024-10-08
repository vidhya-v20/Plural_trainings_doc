select * from northwind.Products;

select ProductID,ProductName,UnitPrice from Products;

SELECT ProductID, ProductName, UnitPrice FROM Products ORDER BY UnitPrice asc;

SELECT ProductID, ProductName, UnitPrice FROM Products WHERE UnitPrice <= 7.50;

SELECT ProductID, ProductName, UnitPrice FROM Products WHERE UnitsInStock >= 100 ORDER BY UnitPrice DESC;

SELECT ProductID, ProductName, UnitPrice FROM Products WHERE UnitsInStock >= 100 ORDER BY UnitPrice DESC, ProductName ASC;

SELECT ProductID, ProductName, UnitsOnOrder FROM Products WHERE UnitsInStock = 0 AND UnitsOnOrder > 0 ORDER BY ProductName;

SELECT * from Categories;

SELECT CategoryID,CategoryName FROM Categories WHERE CategoryName = 'Seafood';

SELECT ProductID, ProductName, UnitPrice FROM Products WHERE CategoryID = (SELECT CategoryID FROM Categories WHERE CategoryName = 'Seafood');

SELECT FirstName, LastName FROM Employees;

SELECT DISTINCT TitleOfCourtesy FROM Employees;

SELECT EmployeeID, FirstName, LastName, Salary FROM Employees WHERE Salary BETWEEN 2000 AND 2500;

SELECT * FROM Suppliers;

SELECT COUNT(*) AS TotalSuppliers FROM suppliers;

SELECT SUM(salary) AS TotalSalaries FROM employees;

SELECT MIN(UnitPrice) AS MinPrice FROM products;

SELECT AVG(UnitPrice) AS AveragePrice FROM products;

SELECT MAX(UnitPrice) AS MaxPrice FROM products;

SELECT SupplierID, COUNT(*) AS NumberOfItemsSupplied FROM products GROUP BY SupplierID ORDER BY SupplierID;

SELECT CategoryID, AVG(UnitPrice) AS AveragePrice FROM products GROUP BY CategoryID ORDER BY CategoryID;

SELECT SupplierID, COUNT(*) AS NumberOfItemsSupplied FROM products GROUP BY SupplierID HAVING COUNT(*) >= 5 ORDER BY SupplierID;

SELECT ProductID, ProductName, UnitPrice * UnitsInStock AS InventoryValue FROM products ORDER BY InventoryValue DESC, ProductName;

select * from  Shippers;

SELECT OrderID, ShipName, ShipAddress FROM orders WHERE ShipVia = (
    SELECT ShipperID
    FROM Shippers
    WHERE CompanyName = 'Federal Shipping'
);

select * from Orders Details;

SELECT OrderID
FROM `order details`
WHERE ProductID = (
    SELECT ProductID
    FROM products
    WHERE ProductName = 'Sasquatch Ale'
);

SELECT CONCAT(employees.FirstName, ' ', employees.LastName) AS EmployeeName
FROM employees
JOIN orders ON employees.EmployeeID = orders.EmployeeID
WHERE orders.OrderID = 10266;

SELECT p.ProductID, p.ProductName, p.UnitPrice,c.CategoryName FROM products p JOIN 
    categories c ON p.CategoryID = c.CategoryID ORDER BY 
    c.CategoryName, p.ProductName;
    
    
    
SELECT p.ProductID,p.ProductName, p.UnitPrice,s.CompanyName AS SupplierName FROM products p JOIN  suppliers s ON 
p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75 ORDER BY  p.ProductName;

SELECT  p.ProductID,p.ProductName,p.UnitPrice,c.CategoryName,s.CompanyName AS SupplierName FROM products p
JOIN categories c ON p.CategoryID = c.CategoryID JOIN  suppliers s ON p.SupplierID = s.SupplierID ORDER BY p.ProductName;

SELECT p.ProductName,c.CategoryName FROM products p JOIN categories c ON p.CategoryID = c.CategoryID
WHERE p.UnitPrice = (SELECT MAX(UnitPrice) FROM products);


SELECT o.OrderID,o.ShipName,o.ShipAddress,s.CompanyName AS ShippingCompanyName FROM orders o
JOIN shippers s ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany';

SELECT o.OrderID,o.OrderDate,o.ShipName,o.ShipAddress FROM orders o JOIN `order details` od ON o.OrderID = od.OrderID
JOIN products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale';

INSERT INTO suppliers (CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES ('New Supplier Inc.', 'Saranya', 'Sales Manager', 'EKA pranika', 'Supplier City', 'Supplier Region', '999910', 'India', '456-7890', '456-7899');

INSERT INTO products (ProductName, SupplierID, CategoryID, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued)
VALUES ('New Product', 1, 1, '10 boxes', 100.00, 50, 0, 10, 0);


SELECT p.ProductID,p.ProductName,p.UnitPrice,s.SupplierID,s.CompanyName AS SupplierName
FROM products p JOIN suppliers s ON p.SupplierID = s.SupplierID ORDER BY  p.ProductName;

UPDATE products SET UnitPrice = UnitPrice * 1.15 WHERE ProductID = 69;



DELETE FROM products WHERE ProductID = 78;

SELECT ProductID,ProductName,UnitPrice FROM products
WHERE SupplierID = 1
ORDER BY  ProductName;

DELETE FROM suppliers WHERE SupplierID = 10;

SELECT * FROM products ORDER BY ProductName;

SELECT * FROM suppliers ORDER BY CompanyName;

select * from Employees;

















