-- write your COPY statement to import a csv here

COPY drink
FROM '/Users/lucykocharian/Lkochar19-homework05/drinks.csv'
DELIMITER ','
CSV HEADER;

-- command line argument to import code : 
-- \i Lkochar19-homework05/import_csv.sql 
-- output: COPY 193