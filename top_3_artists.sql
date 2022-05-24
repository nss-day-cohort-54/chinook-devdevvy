SELECT a.name, SUM(il.TrackId) AS Sold
FROM Artist a 
JOIN Album al 
    ON a.ArtistId = al.ArtistId
JOIN Track t   
    ON al.AlbumId = t.AlbumId
JOIN InvoiceLine il 
    ON il.TrackId = t.TrackId
Group BY a.Name
ORDER BY Sold DESC
LIMIT 3