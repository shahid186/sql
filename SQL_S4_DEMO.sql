use world;

select * from country WHERE IndepYear=1947;
select * from countrylanguage;


SELECT Language FROM countrylanguage
WHERE CountryCode IN (SELECT Code FROM country WHERE Name='INDIA');

SELECT Language,IsOfficial FROM countrylanguage
WHERE CountryCode IN (SELECT CODE FROM COUNTRY WHERE NAME IN(SELECT NAME FROM COUNTRY WHERE IndepYear=1947))
AND IsOfficial='T';



SELECT Language
FROM countrylanguage JOIN country ON country.Code=countrylanguage.CountryCode
WHERE  Name='INDIA';

-- SUBQUERY: SCALAR AND TABLE



SELECT Name,100*Population/(SELECT SUM(Population) FROM country) AS 'PER-WORLD_POP'
FROM country
ORDER BY 2 DESC;



 SELECT NAME,
(SELECT COUNT(*) FROM city WHERE CITY.CountryCode=country.CODE) AS CITY_COUNTS,
(SELECT COUNT(*) FROM countrylanguage WHERE countrylanguage.CountryCode=COUNTRY.CODE) AS LANGUAGE_UNTS
FROM country
ORDER BY 1 DESC; 





SELECT * FROM (SELECT Code,Name FROM country) AS IND_COUNTRY;




SELECT AVG(SUM_POP) FROM(SELECT Continent,SUM(Population)AS SUM_POP FROM country GROUP BY(Continent)) AS x;


USE world;
SELECT * FROM country;

SELECT * FROM countrylanguage;

SELECT * FROM city;
















