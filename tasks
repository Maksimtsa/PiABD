1) SELECT klienci.ImieKlienta, klienci.NazwiskoKlienta  
FROM klienci INNER JOIN zamowienia  
on klienci.IDKlienta = zamowienia.IDKlienta 
    INNER JOIN dane_zamowien 
    on zamowienia.NumerZamowienia = dane_zamowien.NumerZamowienia 
    INNER JOIN produkty  
    ON dane_zamowien.NumerProduktu = produkty.NumerProduktu 
WHERE produkty.NumerProduktu LIKE 'kask%' 

 

 

 

2) SELECT dostawcy.NazwaDostawcy 

FROM dostawcy  
INNER JOIN dostawcy_produktow  
on dostawcy.IDDostawcy = dostawcy_produktow.IDDostawcy 
    INNER JOIN produkty 
    on dostawcy_produktow.NumerProduktu = produkty.NumerProduktu 
WHERE produkty.NumerProduktu LIKE 'kask%' 

 



 

 

SELECT DISTINCT Concat(klienci.ImieKlienta, "", klienci.NazwiskoKlienta)   
as klient, 'kupil kask' as kto 
FROM klienci INNER JOIN zamowienia   
on klienci.IDKlienta = zamowienia.IDKlienta  
    INNER JOIN dane_zamowien  
    on zamowienia.NumerZamowienia = dane_zamowien.NumerZamowienia  
    INNER JOIN produkty   
    ON dane_zamowien.NumerProduktu = produkty.NumerProduktu  
WHERE produkty.NumerProduktu LIKE 'kask%'  

  

UNION 

  

SELECT dostawcy.NazwaDostawcy as klient, 'dostarczyl kask' as kto 
FROM dostawcy  
INNER JOIN dostawcy_produktow  
on dostawcy.IDDostawcy = dostawcy_produktow.IDDostawcy 
    INNER JOIN produkty 
    on dostawcy_produktow.NumerProduktu = produkty.NumerProduktu 
WHERE produkty.NumerProduktu LIKE 'kask%' 



SELECT klienci.ImieKlienta as imie, klienci.NazwiskoKlienta as nazwisko, imprezy.DzienRozpoczecia as poczatek, nazwascenicznaWykonawcy as KAPELA 
FROM klienci INNER JOIN imprezy 
on  klienci.IDKlienta = imprezy.IDKlienta 
INNER JOIN wykonawcy 
on imprezy.IDWykonawcy = wykonawcy.IDWykonawcy 
WHERE wykonawcy.NazwaScenicznaWykonawcy like 'Modern Dance' 
order by Nazwisko 

 

Zad. 1 Dla wszystkich klientow wyszukaj miasto zamieszkanie. Wykaz uparzadkuj miastami rosnaco oraz nazwiskami klientow 

SELECT klienci.MiastoKlienta, klienci.ImieKlienta as imie, klienci.NazwiskoKlienta as nazwisko 
FROM klienci 
ORDER BY klienci.MiastoKlienta, klienci.NazwiskoKlienta 

Zad. 2 Dla wszystkich imprez w Bazie Danych wyznacz nasze honorarium jako 12%  
Wartosci kontraktu oraz wartosc netto kontraktu dla artysty jako roznice wartosci kontrakti i wyplaconego honorarium 
SELECT imprezy.WartoscKontraktu,  
imprezy.WartoscKontraktu * 0,12 as honorarium,   
imprezy.WartoscKontraktu - (imprezy.WartoscKontraktu * 0,12) as netto 
FROM impezy;	 

Zad. 3  Sporzadz wykaz imprez trwajacych wiecej niz dwa dni. Wykaz niech zawiera Numer imprezy, dzien rozpoczecia oraz dzien zakonczenia 

 
SELECT imprezy.NumerImprezy, imprezy.DzienRozpoczecia, imprezy.DzienZakonczenia  
FROM imprezy  
WHERE DATEDIFF(imprezy.DzienRozpoczecia, imprezy.DzienZakonczenia) > 2; 

 

Zad. 11 

Sporzadz wykaz wszystkich imprez z datami rozpoczecia i datami zakonczenia oraz wartoscia kpntraktu  i numerem imprezy. Ktore cale odbywaly sie w pazdzierniku 2017 
SELECT imprezy.NumerImprezy, imprezy.DzienRozpoczecia, imprezy.DzienZakonczenia, imprezy.WartoscKontraktu 
FROM imprezy 
WHERE (month(imprezy.DzienRozpoczecia) = 10 AND  
       (YEAR(imprezy.DzienRozpoczecia) = 2017 AND  
       month(imprezy.DzienZakonczenia) = 10) AND  
       YEAR(imprezy.DzienZakonczenia) = 2017) 

Zad 12 

SELECT dostawcy.NazwaDostawcy 
FROM dostawcy 
WHERE dostawcy.MiastoDostawcy IN ("Ballard", "Bellevue", "Redmond") 
ORDER BY dostawcy.NazwaDostawcy 






Group by  
Count  
Sum 
Min 
Max 
Avg 

1) 

SELECT Continent, COUNT(Code) AS IlePanstw 
FROM country 
GROUP BY Continent 

 

2) 

SELECT Continent, COUNT(Code) AS IlePanstw 
FROM country 
GROUP BY Continent 
ORDER BY IlePanstw DESC 
(zmniejsz) 

 

 

 

 

 

3) SELECT countrylanguage.Language, COUNT(CountryCode) AS ilePanstwUzywa 

FROM countrylanguage, country 

WHERE countrylanguage.IsOfficial = "T" AND Continent="Europa" AND country.Code=countrylanguage.CountryCode 

GROUP BY countrylanguage.Language  

ORDER BY ilePanstwUzywa DESC; 

 

4) 

SELECT country.Name, city.Population SUM(city.Population)as populacja 

FROM city, country 

WHERE country.Continent="South America"  

AND city.Population >= 100000 

AND country.Code=city.CountryCode 

GROUP BY country.Name 

ORDER BY populacja DESC 

 

5) 
SELECT gatunki.nazwa_zwyczajowa, SUM(obserwacje.liczebnosc) AS IlePtakow 
FROM gatunki, obserwacje 
WHERE gatunki.ID_gatunku=obserwacje.ID_gatunku 
GROUP BY gatunki.nazwa_zwyczajowa 
ORDER BY IlePtakow DESC 

6) 
SELECT gatunki.nazwa_zwyczajowa, SUM(obserwacje.liczebnosc) AS ilePtakow 
FROM gatunki, obserwacje 
JOIN lokalizacje.ID_lokalizacji 
WHERE lokalizacje.powiat = "gdanski" 
GROUP BY gatunki.nazwa_zwyczajowa 

 
08.10.2024
 

1)SELECT SUM(imprezy.WartoscKontraktu), AVG(imprezy.WartoscKontraktu) 
FROM imprezy 
JOIN wykonawcy ON imprezy.IDWykonawcy = wykonawcy.IDWykonawcy 
GROUP BY wykonawcy.MiastoWykonawcy; 

 

2)wyznacz śrenią cenehurtową dla dostawców poduktów pogrup wg miast dostawców 
SELECT AVG(dostawcy_produktow.CenaHurtowa) 
FROM dostawcy_produktow, dostawcy 
WHERE dostawcy_produktow.IDDostawcy = dostawcy.IDDostawcy 
GROUP BY dostawcy.MiastoDostawcy; 

 

3)podaj 10 najliczniejszych obserwacji zaewidencjonowancyh w tabeli obserwacje uzuskanych w tabeli agregujaca count pogrup nazwa zwyczajawa gatunku. Wynik uporzadkuj malejaco 

SELECT COUNT(obserwacje.liczebnosc) AS liczbnosc, gatunki.nazwa_zwyczajowa 
FROM obserwacje, gatunki 
WHERE obserwacje.ID_gatunku = gatunki.ID_gatunku 
GROUP BY gatunki.nazwa_zwyczajowa 
ORDER BY liczbnosc DESC 
LIMIT 10 

4) dla wszystkich produktow w tabeli produkty wyzncza liczbe dostawcow kazdego produktu 

SELECT produkty.NazwaProduktu, COUNT(dostawcy_produktow.IDDostawcy) 
FROM produkty, dostawcy_produktow, dostawcy 
WHERE dostawcy_produktow.IDDostawcy = dostawcy.IDDostawcy  
AND produkty.NumerProduktu = dostawcy_produktow.NumerProduktu 
GROUP BY NazwaProduktu; 

15.10.2024
1)wyświetl nazwę dostawcy
SELECT dostawcy.NazwaDostawcy
FROM dostawcy

2)jakie sa produkty i ile kosztuja
SELECT produkty.NazwaProduktu, produkty.CenaDetaliczna
FROM produkty

3)wskaż najdroższą książkę
SELECT ksiazki.tytul, MAX(ksiazki.cena)
FROM ksiazki

4)podaj zamówienie założone ostatnio
SELECT *
FROM zamowienia
GROUP BY zamowienia.data DESC

5)
SELECT	imprezy.WartoscKontraktu,
		(imprezy.WartoscKontraktu * 0.15) as nasze_honorarium, 
		(imprezy.WartoscKontraktu - imprezy.WartoscKontraktu * 0.15) as wartosc_netto
FROM imprezy;

6)

 

 

 
