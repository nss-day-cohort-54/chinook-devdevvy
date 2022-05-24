-- Provide a query that shows each 
-- Invoice line item, with the name 
-- of the track that was purchase, 
-- and the name of the artist.

SELECT i.*, t.Name, a.Title
FROM InvoiceLine i 
JOIN Track t 
    ON i.InvoiceLineId = t.TrackId
JOIN Album a 
    ON t.AlbumId = a.AlbumId
JOIN Artist art 
    ON a.ArtistId = art.ArtistId