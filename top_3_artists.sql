SELECT S.Name, COUNT(L.InvoiceLineId) as sold
FROM InvoiceLine L LEFT JOIN Track T ON L.TrackId = T.TrackId
LEFT JOIN Album A ON T.AlbumId = A.AlbumId
LEFT JOIN Artist S ON A.ArtistId = S.ArtistId
GROUP BY S.ArtistId
ORDER BY sold
DESC
LIMIT 3
