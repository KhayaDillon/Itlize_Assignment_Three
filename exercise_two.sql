--1.Get USA and UK Customer's List and their Contact Information. (Table: Customers)
SELECT * FROM Customers WHERE region = "USA" OR region = "UK"

--2. Get Customer List who are from USA or from SP Region of Brazil. (Table: Customers)
SELECT * FROM Customers WHERE region = "USA" OR region = "Brazil"

--3. Get all the CustomerID and OrderID for order placed in third quarter of 1997. (Table: Orders)
SELECT Customers.customerId, orderId FROM Customers INNER JOIN Orders ON Customers.customerId = Orders.customerId WHERE YEAR(orderDate) = 1997 AND MONTH(orderDate) BETWEEN 7 AND 9 

--4. Get the Customer who's Company Name starts with either A, B, C, D, E, F, or G and ends with N or E. (Table: Customers)
SELECT * FROM Customers WHERE contactName LIKE '[a-g]%[ne]'

--5. Get the list of Customers where Company Name's 2nd letter is Consonant. (Table: Customers)
SELECT * FROM Customers WHERE contactName LIKE '_[^aeiou]%'

--7. We acquire new Shipper and it does not ship to PO Box. Generate the list of Customers which has PO Box address. (Table: Customers)
SELECT * FROM Customers WHERE address LIKE 'P.O.%'

--8. Get the Customer Count by (Table: Customers)
  SELECT customer_name, COUNT(customer_id) FROM Customers GROUP_BY country
  SELECT customer_name, COUNT(customer_id) FROM Customers GROUP_BY country, region
  SELECT customer_name, COUNT(customer_id) FROM Customers GROUP_BY country, region, city

--9. The Company wants to increase its relationship with higher raking officers of Customer. Get the Count of Contact's person by their title. (Table: Customers)
SELECT contactTitle, COUNT(contactTitle) AS titleCount FROM Customers GROUP BY contactTitle 

--10. Get the list of Customers and Number of Orders placed by each customer till date. (Table: Orders)
SELECT contactName, COUNT(orderId) AS orderNum FROM Customers INNER JOIN Orders ON Customers.customerId = Orders.customerId GROUP BY contactName

--11
SELECT TOP 10 contactName, COUNT(orderId) AS orderNum FROM Customers INNER JOIN Orders ON Customers.customerId = Orders.customerId GROUP BY contactName ORDER BY COUNT(orderId) DESC

--12
SELECT contactName, COUNT(orderId) AS orderNum FROM Customers INNER JOIN Orders ON Customers.customerId = Orders.customerId GROUP BY contactName HAVING COUNT(orderId) > 5 

--13
SELECT YEAR(orderDate) AS orderYear, COUNT(orderId) AS orderNUM FROM ORDERS GROUP BY YEAR(orderDate)
SELECT DATEPART(quarter, orderDate) AS quarter, COUNT(orderId) AS orderNUM FROM ORDERS GROUP BY DATEPART(quarter, orderDate)
SELECT DATEPART(month, orderDate) AS month, COUNT(orderId) AS orderNUM FROM ORDERS GROUP BY DATEPART(month, orderDate)

--14 
SELECT AVG(freight) AS avg, MAX(freight) AS max, MIN(freight) AS min, SUM(freight) AS total FROM Orders
SELECT companyName, AVG(freight) AS avg, MAX(freight) AS max, MIN(freight) AS min, SUM(freight) AS total FROM Orders INNER JOIN Customers ON Orders.customerId = Customers.customerId GROUP BY companyName
SELECT country, AVG(freight) AS avg, MAX(freight) AS max, MIN(freight) AS min, SUM(freight) AS total FROM Orders INNER JOIN Customers ON Orders.customerId = Customers.customerId GROUP BY country

--15
SELECT productName, unitPrice, unitsOnOrder, (unitPrice * (unitsInStock + unitsOnOrder)) - unitPrice * unitsInStock AS totalSale FROM Products

--16
SELECT productName, COUNT(productName) AS productCount FROM [Order Details] INNER JOIN Products ON [Order Details].productId = Products.productId GROUP BY productName
SELECT productName, Products.unitPrice, (Products.unitPrice * quantity) - Products.unitPrice * quantity * discount AS totalSale FROM [Order Details] INNER JOIN Products ON [Order Details].productId = Products.productId

--17
SELECT Products.productId, productName, quantity FROM [Order Details] INNER JOIN Products ON [Order Details].productId = Products.productId 

--18
SELECT TOP 10 productName, quantity FROM [Order Details] INNER JOIN Products ON [Order Details].productId = Products.productId ORDER BY quantity DESC

--19
SELECT contactName, COUNT(orderId) AS orderNum FROM Customers INNER JOIN Orders ON Customers.customerId = Orders.customerId WHERE region = 'SP' AND YEAR(orderDate) = 1997 GROUP BY contactName 

--20
SELECT contactName FROM Customers INNER JOIN Orders ON Customers.customerId = Orders.customerId WHERE region = 'SP' AND YEAR(orderDate) = 1998 GROUP BY contactName HAVING COUNT(orderId) > 7  
