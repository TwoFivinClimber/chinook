SELECT M.Name, COUNT(L.InvoiceId) as media_sold
FROM InvoiceLine L LEFT JOIN Track T ON L.TrackId = T.TrackId
LEFT JOIN MediaType M ON T.MediaTypeId = M.MediaTypeId
GROUP BY M.MediaTypeId
ORDER BY media_sold DESC
LIMIT 1
