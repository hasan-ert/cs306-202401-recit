INSERT INTO Sailors (sid, sname, rating, age)
VALUES (1, 'Alice', 7, 25),
       (2, 'Bob', 8, 30),
       (3, 'Charlie', 9, 28),
       (4, 'David', 5, 22),
       (5, 'Emily', 6, 35),
       (6, 'Frank', 10, 40),
       (7, 'Grace', 8, 20),
       (8, 'Henry', 4, 27),
       (9, 'Isabella', 9, 32),
       (10, 'Jack', 7, 18);

INSERT INTO Boats (bid, bname, btype)
VALUES (1, 'Sea Serpent', 'sailboat'),
       (2, 'Sun Voyager', 'motorboat'),
       (3, 'Wind Rider', 'sailboat'),
       (4, 'Ocean Dream', 'catamaran'),
       (5, 'Blue Horizon', 'motorboat'),
       (6, 'Salty Dog', 'sailboat'),
       (7, 'Wave Rider', 'jet ski'),
       (8, 'Sea Breeze', 'catamaran'),
       (9, 'Aqua Star', 'motorboat'),
       (10, 'Salty Wind', 'sailboat');


INSERT INTO Reserves (sid, bid, start_date, end_date)
VALUES (1, 1, '2024-02-01', '2024-02-05'),  -- Alice reserves Sea Serpent (sailboat) for 5 days (Feb 1-5)
       (2, 2, '2024-02-10', '2024-02-12'),  -- Bob reserves Sun Voyager (motorboat) for 3 days (Feb 10-12)
       (1, 3, '2024-02-15', '2024-02-17'),  -- Alice reserves Wind Rider (sailboat) for 3 days (Feb 15-17)
       (3, 1, '2024-02-20', '2024-02-24'),  -- Charlie reserves Sea Serpent (sailboat) for 5 days (Feb 20-24)
       (4, 2, '2024-02-25', '2024-02-27'),  -- David reserves Sun Voyager (motorboat) for 3 days (Feb 25-27)
       (5, 4, '2024-02-08', '2024-02-11'),  -- Emily reserves Ocean Dream (catamaran) for 4 days (Feb 8-11)
       (6, 5, '2024-02-18', '2024-02-20'),  -- Frank reserves Blue Horizon (motorboat) for 3 days (Feb 18-20)
       (7, 3, '2024-02-23', '2024-02-25'),  -- Grace reserves Wind Rider (sailboat) for 3 days (Feb 23-25)
       (8, 7, '2024-02-15', '2024-02-17'),  -- Henry reserves Wave Rider (jet ski) for 3 days (Feb 15-17)
       (9, 8, '2024-02-22', '2024-02-24'),  -- Isabella reserves Sea Breeze (sailboat) for 3 days (Feb 22-24)
       (2, 9, '2024-03-01', '2024-03-03'),  -- Bob reserves Aqua Star (motorboat) for 3 days (Mar 1-3)
       (10, 1, '2024-03-05', '2024-03-09'); 
       


INSERT INTO Reserves (sid, bid, start_date, end_date)
VALUES (6, 3, '2024-02-27', '2024-03-02'),  -- Frank reserves Wind Rider (sailboat) for 6 days (Feb 27-Mar 2)
       (7, 4, '2024-03-04', '2024-03-06'),  -- Grace reserves Ocean Dream (catamaran) for 3 days (Mar 4-6)
       (8, 5, '2024-03-08', '2024-03-10'),  -- Henry reserves Blue Horizon (motorboat) for 3 days (Mar 8-10)
       (9, 1, '2024-03-12', '2024-03-16'),  -- Isabella reserves Sea Serpent (sailboat) for 5 days (Mar 12-16)
       (10, 6, '2024-03-15', '2024-03-17'),  -- Jack reserves Salty Dog (sailboat) for 3 days (Mar 15-17)
       (5, 7, '2024-03-18', '2024-03-20'),  -- Emily reserves Wave Rider (jet ski) for 3 days (Mar 18-20)
       (3, 8, '2024-03-22', '2024-03-24'),  -- Charlie reserves Sea Breeze (catamaran) for 3 days (Mar 22-24)
       (2, 9, '2024-03-25', '2024-03-27'),  -- Bob reserves Aqua Star (motorboat) for 3 days (Mar 25-27)
       (1, 10, '2024-03-29', '2024-04-02'),  -- Alice reserves Salty Wind (sailboat) for 4 days (Mar 29-Apr 2)
       (4, 3, '2024-04-05', '2024-04-07');  -- David reserves Wind Rider (sailboat) for 3 days (Apr 5-7)

INSERT INTO Reserves (sid, bid, start_date, end_date)
VALUES (4, 3, '2024-02-27', '2024-03-02');
