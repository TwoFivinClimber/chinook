SELECT e.FirstName|| ' ' ||e.LastName as Agent, InvoiceId  FROM Invoice i
INNER JOIN Customer c on i.CustomerId = c.CustomerId LEFT  JOIN Employee e on c.SupportRepId = e.EmployeeId
WHERE e.title LIKE "sales support agent"
ORDER BY Agent
