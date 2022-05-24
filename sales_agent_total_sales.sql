-- Provide a query that shows total sales 
-- made by each sales agent. The resultant 
-- table should include:
-- Employee full name
-- Total sales for each employee (all time)

SELECT e.FirstName || ' ' || e.LastName, COUNT(i.total)   
FROM Invoice i 
JOIN Customer c 
    ON i.CustomerId = c.CustomerId
JOIN Employee e  
    ON c.SupportRepId = e.EmployeeId
GROUP BY e.FirstName