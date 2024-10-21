1)wyświetl nazwę dostawcy
SELECT dostawcy.NazwaDostawcy
FROM dostawcy
GROUP BY dostawcy.NazwaDostawcy;

2)jakie sa produkty i ile kosztuja
SELECT produkty.NazwaProduktu, produkty.CenaDetaliczna
FROM produkty
GROUP BY produkty.CenaDetaliczna DESC;

3)podaj najdroższy produkt
SELECT produkty.NazwaProduktu, MAX(produkty.CenaDetaliczna)
FROM produkty

4)podaj zamówienie założone ostatnio
SELECT *
FROM zamowienia
GROUP BY zamowienia.DataZamowienia DESC
LIMIT 1;

5)
wyszukiwać klientów, którzy zamówili produkty z nazwą zaczynającą się na rękawice
/*wyszukiwać klientów, którzy zamówili produkty z nazwą zaczynającą się na kask*/
SELECT klienci.ImieKlienta, produkty.NazwaProduktu
FROM klienci
INNER JOIN zamowienia ON klienci.IDKlienta = zamowienia.IDKlienta
INNER JOIN dane_zamowien ON zamowienia.NumerZamowienia = dane_zamowien.NumerZamowienia
INNER JOIN produkty ON dane_zamowien.NumerProduktu = produkty.NumerProduktu
WHERE produkty.NazwaProduktu LIKE "%kask";

