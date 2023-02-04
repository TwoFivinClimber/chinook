SELECT T.Name, T.TrackId
FROM InvoiceLine L LEFT JOIN Invoice I ON
L.InvoiceId = I.InvoiceId LEFT JOIN Track T ON L.TrackId = T.TrackId
WHERE strftime('%Y', I.InvoiceDate) = '2013'
