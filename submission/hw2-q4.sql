SELECT DISTINCT C.name AS name
FROM Carriers AS C, Flights AS F
WHERE F.carrier_id = C.cid
GROUP BY C.name, F.month_id, F.day_of_month
HAVING COUNT(*) > 1000;
