SELECT COUNT(InvoiceId) as Total_2009_and_2011 from Invoice
WHERE strftime('%Y', InvoiceDate) = '2009' OR strftime('%Y', InvoiceDate) = '2011'
