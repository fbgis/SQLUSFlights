/*EXERCICI 1*/
SELECT COUNT(*) FROM flights; 

/*EXERCICI 2*/
SELECT Origin, AVG(ArrDelay) AS 'prom_arribades', AVG(DepDelay) AS 'prom_sortides' FROM Flights
GROUP BY Origin;

/*EXERCICI 3*/
SELECT Origin, colYear, colMonth, AVG(ArrDelay) AS 'prom_arribades' FROM Flights
GROUP BY Origin, colYear, colMonth
ORDER BY Origin, colYear, colMonth;

/*EXERCICI 4*/
SELECT USAirports.City, Flights.colYear, Flights.colMonth, AVG(Flights.ArrDelay) AS 'prom_arribades' FROM Flights
INNER JOIN USAirports
WHERE Flights.Origin=USAirports.IATA
GROUP BY Flights.Origin, Flights.colYear, Flights.colMonth
ORDER BY Flights.Origin, Flights.colYear, Flights.colMonth;

/*EXERCICI 5*/
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS'TOTAL_CANCELLED' FROM Flights
WHERE Cancelled=1
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY SUM(Cancelled) DESC;

/*EXERCICI 6*/
SELECT TailNum, SUM(Distance) AS 'totalDistance' FROM Flights
WHERE TailNum!=''
GROUP BY TailNum
ORDER BY SUM(Distance) DESC
LIMIT 10;

/*EXERCICI 7*/
SELECT UniqueCarrier, AVG(ArrDelay) AS'TOTAL_CANCELLED' FROM Flights
GROUP BY UniqueCarrier
HAVING AVG(ArrDelay)>10
ORDER BY AVG(ArrDelay) DESC;