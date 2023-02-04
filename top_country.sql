SELECT BillingCountry, SUM(Total) AS total_sales
FROM Invoice I
GROUP BY BillingCountry
ORDER BY total_sales DESC
LIMIT 1


--OR USER SUBQUERY--


SELECT BillingCountry, SUM(Total) as total
FROM Invoice I
GROUP BY BillingCountry
HAVING total = (SELECT MAX(total)
                FROM Invoice
                GROUP BY BillingCountry)
