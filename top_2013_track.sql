-- Provide a query that shows the most purchased track(s) of 2013

SELECT t.name, t.composer, SUM(il.TrackId) AS Purchases
FROM InvoiceLine il 
JOIN Track t   
    ON t.TrackId = il.TrackId
JOIN Invoice i 
    ON il.InvoiceId = i.InvoiceId
WHERE i.InvoiceDate LIKE '2013%'
Group BY t.Name
ORDER BY Purchases DESC
LIMIT 5