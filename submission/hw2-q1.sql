SELECT DISTINCT F.flight_num AS flight_num
FROM Flights AS F, Carriers as C, Weekdays as W
WHERE F.carrier_id = C.cid
    AND F.day_of_week_id = W.did
    AND F.origin_city = 'Seattle WA'
    AND F.dest_city = 'Boston MA'
    AND C.name = 'Alaska Airlines Inc.'
    AND W.day_of_week = 'Monday';
