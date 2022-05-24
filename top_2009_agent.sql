-- Which sales agent made the 
--most in sales in 2009?

SELECT fullName, MAX(mycount) AS count
FROM (
    SELECT e.FirstName ||' '|| e.LastName AS fullName, SUM(i.total) mycount
    FROM employee e
    JOIN Customer c 
        ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i
        ON c.CustomerId = i.CustomerId
    WHERE i.InvoiceDate LIKE '2009%'
    GROUP BY e.EmployeeId
    )


