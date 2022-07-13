-- write your queries underneath each number:
 
-- 1. the total number of rows in the database
SELECT count(*) from drink;
-- 2. show the first 15 rows, but only display 3 columns (your choice)
SELECT country, beer_servings, total_litres
FROM drink
LIMIT 15;
-- 3. do the same as above, but chose a column to sort on, and sort in descending order
SELECT country, beer_servings, total_litres
FROM drink
ORDER BY total_litres desc
LIMIT 15;

-- 4. add a new column without a default value
ALTER TABLE drink
ADD COLUMN climate VARCHAR(60);

-- 5. set the value of that new column
ALTER TABLE drink
ALTER COLUMN climate
SET DEFAULT NULL;
-- 6. show only the unique (non duplicates) of a column of your choice
SELECT DISTINCT country, total_litres
FROM drink;
-- 7. group rows together by a column value (your choice) and use an aggregate function to calculate something about that group 
SELECT country, SUM(total_litres)
FROM drink
GROUP BY country;
-- 8. now, using the same grouping query or creating another one, find a way to filter the query results based on the values for the groups 
SELECT country, SUM(total_litres)
FROM drink
GROUP BY country
ORDER BY total_litres asc;
-- 9. show countries where total litres > 10
SELECT *
FROM drink
WHERE total_litres > 10;
-- 10. show countries where total litres < 10
SELECT *
FROM drink
WHERE total_litres < 10;
-- 11. show countries where total litres = 10
SELECT *
FROM drink
WHERE total_litres = 10;
-- 12. countries where beer < 100
SELECT country, beer_servings
FROM drink
WHERE beer_servings < 100;
