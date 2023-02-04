SELECT E.FirstName||' '|| E.LastName AS top_seller, SUM(I.Total) as total_sales
FROM Invoice I
LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
Left JOIN Employee E on C.SupportRepId = E.EmployeeId
WHERE E.Title LIKE 'sales support agent'
GROUP BY E.EmployeeId
ORDER BY total_sales
LIMIT 1
