SELECT E.FirstName||' '|| E.LastName AS top_seller, SUM(I.Total) as total_sales
FROM Invoice I
LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
Left JOIN Employee E on C.SupportRepId = E.EmployeeId
WHERE E.Title LIKE 'sales support agent' AND strftime('%Y', I.InvoiceDate) = '2009'
GROUP BY E.EmployeeId
ORDER BY total_sales
LIMIT 1




--FROM CHAT GPT
SELECT E.FirstName||' '|| E.LastName AS sales_agent, SUM(I.Total) AS total_sales
FROM Invoice I
LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
LEFT JOIN Employee E ON C.SupportRepId = E.EmployeeId
WHERE E.Title = 'Sales Support Agent' AND strftime('%Y', I.InvoiceDate) = '2009'
GROUP BY E.EmployeeId;


SELECT E.FirstName||' '|| E.LastName AS sales_agent, SUM(I.Total) AS total_sales
FROM Invoice I
LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
LEFT JOIN Employee E ON C.SupportRepId = E.EmployeeId
WHERE E.Title = 'Sales Support Agent' AND strftime('%Y', I.InvoiceDate) = '2009'
GROUP BY E.EmployeeId
ORDER BY total_sales DESC
LIMIT 1;

SELECT E.FirstName||' '|| E.LastName AS sales_agent, SUM(I.Total) AS total_sales
FROM Invoice I
LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
LEFT JOIN Employee E ON C.SupportRepId = E.EmployeeId
WHERE E.Title = 'Sales Support Agent' AND strftime('%Y', I.InvoiceDate) = '2009'
GROUP BY E.EmployeeId
HAVING total_sales = (SELECT MAX(total_sales) 
                      FROM (SELECT SUM(I.Total) AS total_sales
                            FROM Invoice I
                            LEFT JOIN Customer C ON I.CustomerId = C.CustomerId
                            LEFT JOIN Employee E ON C.SupportRepId = E.EmployeeId
                            WHERE E.Title = 'Sales Support Agent' AND strftime('%Y', I.InvoiceDate) = '2009'
                            GROUP BY E.EmployeeId) subquery)
