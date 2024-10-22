zad.1
SELECT gatunki.nazwa_zwyczajowa, obserwacje.liczebnosc, lokalizacje.powiat
FROM gatunki
INNER JOIN obserwacje ON gatunki.ID_gatunku = obserwacje.ID_gatunku
INNER JOIN lokalizacje ON obserwacje.ID_lokalizacji = lokalizacje.ID_lokalizacji
GROUP BY obserwacje.liczebnosc DESC
LIMIT 10;

zad.2
SELECT agenci.ImieAgenta, agenci.NazwiskoAgenta, imprezy.WartoscKontraktu, imprezy.DzienRozpoczecia
FROM agenci
INNER JOIN imprezy ON agenci.IDAgenta = imprezy.IDAgenta
WHERE YEAR(imprezy.DzienRozpoczecia) = 2017 AND MONTH(imprezy.DzienRozpoczecia) = 12;

zad.3
SELECT gatunki.nazwa_zwyczajowa, obserwacje.liczebnosc, obserwacje.zachowanie
FROM gatunki
INNER JOIN obserwacje ON gatunki.ID_gatunku = obserwacje.ID_gatunku
WHERE obserwacje.zachowanie = "plywa" AND gatunki.nazwa_zwyczajowa LIKE "k%"
GROUP BY gatunki.nazwa_zwyczajowa DESC
LIMIT 3;
