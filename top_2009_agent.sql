SELECT E.FirstName||' '|| E.LastName as sales_agent, SUM(I.Total)
FROM Invoice I LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
LEFT JOIN Employee E on C.SupportRepId = E.EmployeeId
WHERE strftime('%Y', I.InvoiceDate) = '2009' AND MAX(I.Total)
