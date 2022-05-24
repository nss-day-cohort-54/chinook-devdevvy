SELECT InvoiceId, InvoiceDate, BillingCountry, FirstName || ' ' || LastName
FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
