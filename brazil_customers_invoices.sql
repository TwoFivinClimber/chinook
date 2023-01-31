SELECT Customer.FirstName|| ' ' || Customer.LastName as Name, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry  from Invoice
  JOIN Customer ON Invoice.CustomerId=Customer.CustomerId
  WHERE Customer.Country = 'Brazil' 
