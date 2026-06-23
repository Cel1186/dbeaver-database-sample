SELECT * FROM Track;

SELECT * FROM Customer WHERE Country = 'USA';

SELECT * FROM Invoice WHERE BillingState IS NULL;

SELECT * FROM Invoice WHERE BillingState IS NOT NULL;

SELECT * FROM Artist WHERE Name LIKE 'Black%';

Select * from Artist a   order by  name desc;

Select * from Artist a   order by  name Asc;

SELECT COUNT(*) FROM Invoice;


SELECT BillingCity, SUM(Total) 
FROM Invoice 
GROUP BY BillingCity;



SELECT 
    BillingCountry, 
    SUM(Total)
FROM 
    Invoice
GROUP BY 
    BillingCountry
HAVING 
    SUM(Total) > 100
ORDER BY 
    Total DESC;




SELECT 
    COUNT(DISTINCT ArtistId) AS UniqueArtistsCount
FROM 
    Album;




SELECT 
    BillingCountry AS Country,
    SUM(Total) AS Total_Revenue,
    AVG(Total) AS Average_Spend
FROM 
    Invoice
GROUP BY 
    BillingCountry
ORDER BY 
    Total_Revenue DESC;



SELECT 
    t.Name AS Track_Name,    -- Track.name "get the information from t.name"  AS is rename col on output--
    a.Title AS Album_Title   -- Album.title "Get the information from album.title" --
FROM 
    Track t      -- Get it at Track--
JOIN 
    Album a ON t.AlbumId = a.AlbumId;   -- By default, a standard JOIN is an Inner Join. This means SQL will only display rows where a match is successfully found in both tables.--
    
    
    
    
 SELECT 
    Name, Milliseconds 
 FROM 
    Track
 WHERE
    Milliseconds > (SELECT AVG(Milliseconds) FROM Track);


SELECT 
    City 
FROM 
    Customer
UNION
SELECT 
    City
FROM 
    Employee;

INSERT INTO Artist (Name) VALUES ('The AI Experts');

 UPDATE Customer SET City = 'New York' WHERE CustomerId = 1;
 
SELECT * 
FROM Artist
WHERE Name = 'The AI Experts';

DELETE FROM Artist WHERE Name = 'The AI Experts';

