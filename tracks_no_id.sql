-- Provide a query that shows all the Tracks, 
-- but displays no IDs. The resultant table 
-- should include:
-- Album name
-- Media type
-- Genre

SELECT t.Name, t.Composer, a.Title, m.name, g.name 
FROM Track t
JOIN Album a 
    ON t.AlbumId = a.AlbumId
Join MediaType m 
    ON t.MediaTypeId = m.MediaTypeId
Join Genre g 
    ON t.GenreId = g.GenreId
