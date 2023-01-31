SELECT InvoiceId, COUNT(InvoiceLineId) as Line_Count
FROM InvoiceLine
GROUP BY InvoiceId
