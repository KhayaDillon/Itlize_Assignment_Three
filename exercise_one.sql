--1.  Find the Territory names that contain the word ‘Santa’ [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE 'Santa%'

--2.	Display the Territory names that begin with the letter ‘C’. [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE 'C%'

--3.	Display the territory names that contain ‘boro’. [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE '%boro'

--4.	Display the names and job titles (ContactTitle) of contacts who are also owners. [Use the Customers table]
SELECT name, contactTitle FROM Customers WHERE contactTitle = 'Owner'

--5.	Display the company names and the URLs of those suppliers that have websites. [Use the Suppliers table]
SELECT companyName, homePage FROM Suppliers WHERE homePage IS NOT NULL

--6.	Display the company names and the URL column of those suppliers that don’t have websites. [Use the Suppliers table]
SELECT companyName, homePage FROM Suppliers WHERE homePage IS NULL

--7.	Display the names and prices of those products with prices of $50 or more. [Use the Products table]
SELECT productName, unitPrice FROM Products WHERE unitPrice >= 50

--8.	Display the names and prices of those products with prices less than $10. [Use the Products table]
SELECT productName, unitPrice FROM Products WHERE unitPrice < 10

--9.	Display the names and prices of those products with prices of $10 or less. [Use the Products table]
SELECT productName, unitPrice FROM Products WHERE unitPrice <= 10

--10.	Display the names and prices of those products with prices greater than or equal to $15 but less than or equal to $20. [Use the Products table]
SELECT productName, unitPrice FROM Products WHERE > unitPrice >= 15 AND unitPrice <= 20

--11.	Display the product names and UnitsOnOrder of products with orders pending (UnitsOnOrder greater than zero). [Use the Products table]
SELECT productName, unitOnOrder FROM Products WHERE unitOnOrder > 0

--12.	Display the names and ages of all employees. [Use the Employees table]
SELECT firstName, lastName, age FROM Employees

--13.	Display the number of years each employee has been with Northwind. [Use the Employees table]
SELECT firstName, lastName, yearsWithNorthwind FROM Employees

--14.	Display the freight total. [Use the Orders table] Use Group By
SELECT SUM(freight) FROM ORDERS

--15.	Display the 1996 freight total. [Use the Orders table]
SELECT SUM(freight) FROM ORDERS WHERE orderDate = 1996

--16.	Display the 1997 freight total. [Use the Orders table] Use Group By
SELECT SUM(freight) FROM ORDERS WHERE orderDate = 1997

--17.	Display the 1998 freight total. [Use the Orders table] Use Group By
SELECT SUM(freight) FROM ORDERS WHERE orderDate = 1997

--18.	Display the OrderID, and ShipCountry of orders to Switzerland, Venezuela, and Austria
SELECT orderId, shipCountry FROM Orders WHERE shipCountry = "Switzerland" OR shipCountry = "Venezuela" OR shipCountry = "Austria"

--19.	Display the names of cities, (just once for each city) in Belgium, Mexico, and Sweden to which orders were shipped. [Use the Orders table]
SELECT shipCity FROM Orders WHERE shipCountry = "Belgium" OR shipCountry = "Mexico" OR shipCountry = "Sweden" AND shipDate IS NOT NULL

--20.	Display the names of all products in the Dairy Products, Seafood, and Beverages categories. [Use the Products and Categories tables] Using Joins
SELECT * FROM Products INNER JOIN Categories ON Products.category_id = Categories.id
