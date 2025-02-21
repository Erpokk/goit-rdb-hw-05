-- Task 1
SELECT id, date, 
       YEAR(date) year, 
       MONTH(date) month, 
       DAY(date) day 
FROM orders;

-- Task 2
SELECT id, date, 
       date + INTERVAL 1 DAY  date_plus_day 
FROM orders;

-- Task 3 
SELECT id, date, 
       UNIX_TIMESTAMP(date) seconds 
FROM orders;

-- Task 4
SELECT COUNT(date) 
FROM orders
WHERE date BETWEEN '1996-07-10 00:00:00' AND '1996-10-08 00:00:00';

-- Task 5 
SELECT  id, date, json_object('id', id , 'date', date) 
FROM orders;
