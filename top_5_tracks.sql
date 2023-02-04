SELECT T.Name, COUNT(T.TrackId) as all_time_sales
FROM InvoiceLine L LEFT JOIN Invoice I ON
L.InvoiceId = I.InvoiceId LEFT JOIN Track T ON L.TrackId = T.TrackId
GROUP BY T.TrackId
ORDER BY all_time_sales
DESC

SELECT T.Name, COUNT(T.TrackId) as all_time_sales
FROM InvoiceLine L LEFT JOIN Invoice I ON
L.InvoiceId = I.InvoiceId LEFT JOIN Track T ON L.TrackId = T.TrackId
GROUP BY L.TrackId
ORDER BY all_time_sales
DESC
LIMIT 5
