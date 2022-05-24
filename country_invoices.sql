-- Provide a query that shows the 
-- total number of invoices per country.

SELECT i.BillingCountry, COUNT(InvoiceId)
FROM Invoice i
GROUP BY BillingCountry