--zad 1
SELECT country.Continent, COUNT(Code) AS IlePanstw
FROM country
GROUP BY country.Continent
ORDER BY IlePanstw DESC;

--zad2
SELECT LANGUAGE, COUNT(country.Code) AS ilepanstw
FROM countrylanguage, country
WHERE countrylanguage.IsOfficial = "T" AND country.Code= countrylanguage.CountryCode
GROUP BY LANGUAGE
ORDER BY ilepanstw DESC

--zad3
SELECT country.Name, SUM(city.Population) as IluObywateli
FROM country, city
WHERE country.Continent="South America" AND city.Population >= 100000 AND country.Code = city.CountryCode
GROUP BY country.Name
ORDER BY IluObywateli DESC

--zad4\
