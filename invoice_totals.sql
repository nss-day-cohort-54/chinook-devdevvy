-- Provide a query that shows the 
-- customers and employees associated 
-- with each invoice. The resultant 
-- table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT i.total, c.FirstName || ' ' || c.LastName, c.Country, e.FirstName || ' ' || e.LastName
FROM Invoice i 
JOIN Customer c 
    ON i.customerId = c.customerId
JOIN Employee e 
    ON e.employeeId = c.supportRepId