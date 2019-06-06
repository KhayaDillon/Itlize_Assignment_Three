--1.  Find the Territory names that contain the word ‘Santa’ [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE 'Santa%'

--2.	Display the Territory names that begin with the letter ‘C’. [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE 'C%'

--3.	Display the territory names that contain ‘boro’. [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE '%boro'

--4.	Display the names and job titles (ContactTitle) of contacts who are also owners. [Use the Customers table]
SELECT name, contact_title FROM Customers WHERE contact_title = "Owner"

--5.	Display the company names and the URLs of those suppliers that have websites. [Use the Suppliers table]
SELECT company_name, home_page FROM Suppliers WHERE home_page IS NOT NULL

--6.	Display the company names and the URL column of those suppliers that don’t have websites. [Use the Suppliers table]
SELECT company_name, home_page FROM Suppliers WHERE home_page IS NULL

--7.	Display the names and prices of those products with prices of $50 or more. [Use the Products table]
SELECT product_name, unit_price FROM Products WHERE unit_price >= 50

--8.	Display the names and prices of those products with prices less than $10. [Use the Products table]
SELECT product_name, unit_price FROM Products WHERE unit_price < 10

--9.	Display the names and prices of those products with prices of $10 or less. [Use the Products table]
SELECT product_name, unit_price FROM Products WHERE unit_price <= 10

--10.	Display the names and prices of those products with prices greater than or equal to $15 but less than or equal to $20. [Use the Products table]
SELECT product_name, unit_price FROM Products WHERE > unit_price >= 15 AND unit_price <= 20

--11.	Display the product names and UnitsOnOrder of products with orders pending (UnitsOnOrder greater than zero). [Use the Products table]
SELECT prduct_name, unit_on_order FROM Products WHERE unit_on_order > 0

--12.	Display the names and ages of all employees. [Use the Employees table]
SELECT first_name, last_name, age FROM Employees

--13.	Display the number of years each employee has been with Northwind. [Use the Employees table]
SELECT first_name, last_name, years_with_northwind FROM Employees

--14.	Display the freight total. [Use the Orders table] Use Group By
SELECT SUM(freight) FROM ORDERS

--15.	Display the 1996 freight total. [Use the Orders table]
SELECT SUM(freight) FROM ORDERS WHERE order_date = 1996

--16.	Display the 1997 freight total. [Use the Orders table] Use Group By
SELECT SUM(freight) FROM ORDERS WHERE order_date = 1997

--17.	Display the 1998 freight total. [Use the Orders table] Use Group By
SELECT SUM(freight) FROM ORDERS WHERE order_date = 1997

--18.	Display the OrderID, and ShipCountry of orders to Switzerland, Venezuela, and Austria
SELECT order_id, ship_country FROM Orders WHERE ship_country = "Switzerland" OR ship_country = "Venezuela" OR ship_country = "Austria"

--19.	Display the names of cities, (just once for each city) in Belgium, Mexico, and Sweden to which orders were shipped. [Use the Orders table]
SELECT ship_city FROM Orders WHERE ship_country = "Belgium" OR ship_country = "Mexico" OR ship_country = "Sweden" AND ship_date IS NOT NULL

--20.	Display the names of all products in the Dairy Products, Seafood, and Beverages categories. [Use the Products and Categories tables] Using Joins
SELECT * FROM Products INNER JOIN Categories ON Products.category_id = Categories.id
