--1.  Find the Territory names that contain the word ‘Santa’ [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE 'Santa%'

--2.	Display the Territory names that begin with the letter ‘C’. [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE 'C%'

--3.	Display the territory names that contain ‘boro’. [Use the Territories Table]
SELECT * FROM Territory WHERE name LIKE '%boro'

--4.	Display the names and job titles (ContactTitle) of contacts who are also owners. [Use the Customers table]
SELECT name, contactTitle FROM Customers WHERE contactTitle = "Owner"

--5.	Display the company names and the URLs of those suppliers that have websites. [Use the Suppliers table]
SELECT companyName, homePage FROM Suppliers WHERE homePage != NULL
