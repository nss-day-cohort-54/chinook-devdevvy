SELECT FirstName  || ' ' || LastName, CustomerId, Country 
FROM Customer
WHERE NOT Country = "USA"