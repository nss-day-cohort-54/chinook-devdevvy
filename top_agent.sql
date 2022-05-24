SELECT fullName, MAX(mycount) AS count
FROM (
    SELECT e.FirstName ||' '|| e.LastName AS fullName, SUM(i.total) mycount
    FROM employee e
    JOIN Customer c 
        ON e.EmployeeId = c.SupportRepId
    JOIN Invoice i
        ON c.CustomerId = i.CustomerId
    GROUP BY e.EmployeeId
    )