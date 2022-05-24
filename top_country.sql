-- Find the best country in the world that has the most sales

SELECT Country, MAX(mycount) AS Count
FROM (
    SELECT i.BillingCountry AS Country, SUM(i.Total) mycount
    FROM Invoice i 
    GROUP BY i.BillingCountry
)

