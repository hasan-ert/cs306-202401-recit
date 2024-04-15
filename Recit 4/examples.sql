-- Find the age group (e.g., 20-29, 30-39, etc.) with the highest average sailor rating

SELECT FLOOR(Sailors.age / 10) AS age_group, AVG(Sailors.rating) AS avg_sailor_rating
FROM Sailors
GROUP BY FLOOR(Sailors.age / 10)
ORDER BY avg_sailor_rating DESC
LIMIT 1;


-- Find the most popular boat model (specific boat name) 
-- for each boat type 
SELECT Boats.btype, bname, COUNT(*) AS num_reservations
FROM Reserves
JOIN Boats ON Boats.bid = Reserves.bid
GROUP BY Boats.btype, bname
ORDER BY Boats.btype,num_reservations DESC;


--  Find the average rating of sailors grouped 
--  by the boat type (e.g., sailboat, motorboat):

SELECT Boats.btype, AVG(Sailors.rating) AS avg_sailor_rating
FROM Sailors
JOIN Reserves ON Sailors.sid = Reserves.sid
JOIN Boats ON Boats.bid = Reserves.bid
GROUP BY Boats.btype
ORDER BY avg_sailor_rating DESC ;




-- Find the month(s) with the most reservations for each boat type:

SELECT Boats.btype, MONTH(Reserves.start_date) AS reservation_month, COUNT(*) AS num_reservations
FROM Sailors
JOIN Reserves ON Sailors.sid = Reserves.sid
JOIN Boats ON Boats.bid = Reserves.bid
GROUP BY Boats.btype, MONTH(Reserves.start_date)
ORDER BY Boats.btype, num_reservations DESC;



-- Find pairs of sailors who have reserved the same boat(s) on overlapping dates:

SELECT s1.sname AS sailor1, s2.sname AS sailor2, b.bname AS boat_name, r1.start_date,r2.start_date,r1.end_date,r2.end_date
FROM Sailors s1
JOIN Reserves r1 ON s1.sid = r1.sid
JOIN Sailors s2 ON s2.sid > s1.sid  -- Ensure s2 > s1 to avoid duplicates
JOIN Reserves r2 ON s2.sid = r2.sid
JOIN Boats b ON r1.bid = r2.bid and b.bid = r1.bid
WHERE r1.start_date <= r2.end_date AND r2.start_date <= r1.end_date;