--Provide a query that shows the most purchased Media Type

SELECT mt.name, t.MediaTypeId, SUM(il.TrackId) AS Number
FROM InvoiceLine il 
JOIN Track t 
    ON il.TrackId = t.TrackId
JOIN MediaType mt 
    ON t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.name
ORDER BY Number DESC
