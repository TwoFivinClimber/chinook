SELECT E.FirstName||' '|| E.LastName as sales_agent, SUM(I.Total) AS total_sales 
FROM Invoice I LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
LEFT JOIN Employee E on C.SupportRepId = E.EmployeeId
WHERE E.Title = "Sales Support Agent"
GROUP BY E.EmployeeId
