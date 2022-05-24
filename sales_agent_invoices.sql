-- Provide a query that shows the 
-- invoices associated with each sales agent. 
-- The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT e.FirstName || ' ' || e.LastName, i.InvoiceId
FROM Invoice i
JOIN Customer c
    ON i.customerId = c.customerId
Join Employee e 
    ON e.employeeId = c.supportRepId