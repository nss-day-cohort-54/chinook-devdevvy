SELECT i.BillingCountry, SUM(i.Total)
FROM Invoice i 
GROUP BY i.BillingCountry