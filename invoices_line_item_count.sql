SELECT I.InvoiceId as Invoice_Id, COUNT(L.InvoiceLineId) as num_invoice_lines
FROM InvoiceLine L LEFT JOIN Invoice I ON L.InvoiceId = I.InvoiceId
GROUP BY Invoice_Id
