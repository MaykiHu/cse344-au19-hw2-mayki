SELECT C.name AS name, CAST( SUM(F.canceled) AS REAL) / COUNT(*) * 100 AS percent
FROM Flights AS F, Carriers AS C
WHERE F.carrier_id = C.cid
    AND F.origin_city = 'Seattle WA'
GROUP BY C.name
HAVING percent > 0.5
ORDER BY percent ASC;
