SELECT 
    BillingCountry AS Country,
    ROUND(SUM(Total), 2) AS TotalRevenue,
    ROUND(AVG(Total), 2) AS AverageTransactionValue
FROM Invoice
GROUP BY BillingCountry
ORDER BY TotalRevenue DESC;



SELECT 
    BillingCountry AS Country,
    ROUND(SUM(Total), 2) AS TotalRevenue,
    ROUND(AVG(Total), 2) AS AverageTransactionValue,
    COUNT(InvoiceId) AS TotalInvoices
FROM Invoice
GROUP BY BillingCountry
HAVING COUNT(InvoiceId) > 5
ORDER BY TotalInvoices DESC;


SELECT 
    Country,
    COUNT(DISTINCT City) AS UniqueCitiesCount
FROM Customer
GROUP BY Country
ORDER BY UniqueCitiesCount DESC;


SELECT 
    m.Name AS MediaTypeName,
    COUNT(t.TrackId) AS TrackCount
FROM Track t
JOIN MediaType m ON t.MediaTypeId = m.MediaTypeId
GROUP BY m.Name
ORDER BY TrackCount DESC
LIMIT 1;


CREATE TABLE Producer (
    ProducerId INTEGER PRIMARY KEY AUTOINCREMENT,
    AlbumId INTEGER,
    ArtistId INTEGER,
    RecordCenter VARCHAR(255),
    FOREIGN KEY (AlbumId) REFERENCES Album(AlbumId),
    FOREIGN KEY (ArtistId) REFERENCES Artist(ArtistId)
);


INSERT INTO Producer (AlbumId, ArtistId, RecordCenter)
SELECT 
    AlbumId, 
    ArtistId,
    CASE 
        WHEN AlbumId % 3 = 0 THEN 'Compass Point Studios'
        WHEN AlbumId % 3 = 1 THEN 'Dierks Studios'
        ELSE 'Criteria Studios'
    END
FROM Album;

SELECT * FROM Producer;

