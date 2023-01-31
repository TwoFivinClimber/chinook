SELECT i.InvoiceLineId as Invoice_Line_Id, t.Name as Track_Name
FROM InvoiceLine i LEFT JOIN Track t ON i.TrackId = t.TrackId
ORDER BY InvoiceId
