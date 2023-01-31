SELECT strftime('%Y', InvoiceDate) as Year, SUM(Total) as Total
FROM Invoice
WHERE strftime('%Y', InvoiceDate) = '2009' or strftime('%Y', InvoiceDate) = '2011'
GROUP BY Year
