SELECT i.InvoiceLineId, t.Name as Track_Name, Artist.name as Artist_Name
FROM InvoiceLine i INNER JOIN Track t ON i.TrackId = t.TrackId LEFT JOIN Album a on t.AlbumId = a.AlbumId LEFT JOIN Artist on a.ArtistId = Artist.ArtistId
ORDER BY InvoiceLineId



-- Provide a query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist.
