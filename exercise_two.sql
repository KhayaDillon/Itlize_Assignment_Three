--1.Get USA and UK Customer's List and their Contact Information. (Table: Customers)
SELECT * FROM Customers WHERE region = "USA" OR region = "UK"

--2. Get Customer List who are from USA or from SP Region of Brazil. (Table: Customers)
SELECT * FROM Customers WHERE region = "USA" OR region = "Brazil"

--3. Get all the CustomerID and OrderID for order placed in third quarter of 1997. (Table: Orders)

--4. Get the Customer who's Company Name starts with either A, B, C, D, E, F, or G and ends with N or E. (Table: Customers)
SELECT * FROM Customers WHERE contact_name LIKE "[a-g]%[ne]"

--5. Get the list of Customers where Company Name's 2nd letter is Consonant. (Table: Customers)
SELECT * FROM Customers WHERE contact_name LIKE "_[^aeiou]"

--7. We acquire new Shipper and it does not ship to PO Box. Generate the list of Customers which has PO Box address. (Table: Customers)
SELECT * FROM Customers WHERE postal_code IS NULL

--8. Get the Customer Count by (Table: Customers)
  SELECT customer_name, COUNT(customer_id) FROM Customers GROUP_BY country
  SELECT customer_name, COUNT(customer_id) FROM Customers GROUP_BY country, region
  SELECT customer_name, COUNT(customer_id) FROM Customers GROUP_BY country, region, city

--9. The Company wants to increase its relationship with higher raking officers of Customer. Get the Count of Contact's person by their title. (Table: Customers)

--10. Get the list of Customers and Number of Orders placed by each customer till date. (Table: Orders)
