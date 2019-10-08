SELECT F.carrier_id AS carrier, MAX(F.price) AS max_price
FROM Flights AS F
WHERE (F.origin_city = 'Seattle WA' AND F.dest_city = 'New York NY')
    OR (F.origin_city = 'New York NY' AND F.dest_city = 'Seattle WA')
GROUP BY F.carrier_id;
