SELECT i.Total, c.FirstName|| ' '||c.LastName as Customer_Name, c.Country as Customer_Country, e.FirstName|| ' ' ||e.LastName as Agent FROM Invoice i
INNER JOIN Customer c on i.CustomerId = c.CustomerId LEFT  JOIN Employee e on c.SupportRepId = e.EmployeeId
