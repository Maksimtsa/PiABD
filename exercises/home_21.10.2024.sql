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

6)
/*Pobierz imiona i nazwiska klientów wraz z nazwami zamówionych przez nich produktów.*/
SELECT klienci.ImieKlienta, klienci.NazwiskoKlienta, produkty.NazwaProduktu
FROM klienci
INNER JOIN zamowienia ON klienci.IDKlienta = zamowienia.IDKlienta
INNER JOIN dane_zamowien ON zamowienia.NumerZamowienia = dane_zamowien.NumerZamowienia
INNER JOIN produkty ON dane_zamowien.NumerProduktu = produkty.NumerProduktu

7)
/*Wyświetl nazwę produktu oraz liczbę zamówień na ten produkt.*/
SELECT produkty.NazwaProduktu, COUNT(dane_zamowien.NumerProduktu) AS LiczbaZamowien
FROM produkty
INNER JOIN dane_zamowien ON produkty.NumerProduktu = dane_zamowien.NumerProduktu
GROUP BY produkty.NazwaProduktu DESC;

8)
/*Pobierz imiona i nazwiska pracowników, którzy obsługiwali zamówienia, wraz z numerami zamówień.*/
SELECT pracownicy.NazwiskoPracownika, pracownicy.ImiePracownika, zamowienia.NumerZamowienia
FROM pracownicy
INNER JOIN zamowienia ON pracownicy.IDPracownika = zamowienia.IDPracownika
GROUP BY zamowienia.NumerZamowienia

9)
/*Pobierz klientów, którzy złożyli najwięcej zamówień, oraz liczbę ich zamówień.*/
SELECT klienci.ImieKlienta, klienci.NazwiskoKlienta, COUNT(zamowienia.IDKlienta) AS LiczbaZamowien
FROM klienci
INNER JOIN zamowienia ON klienci.IDKlienta = zamowienia.IDKlienta
GROUP BY klienci.ImieKlienta, klienci.NazwiskoKlienta
ORDER BY LiczbaZamowien DESC;

10)
/*Pobierz nazwę produktu i nazwę dostawcy, który dostarcza ten produkt*/
SELECT produkty.NazwaProduktu, dostawcy.NazwaDostawcy
FROM produkty
INNER JOIN dostawcy_produktow ON produkty.NumerProduktu = dostawcy_produktow.NumerProduktu
INNER JOIN dostawcy ON dostawcy_produktow.IDDostawcy = dostawcy.IDDostawcy

11)
/*Pobierz wszystkie zamówienia złożone w danym miesiącu wraz z nazwą klienta i zamówionymi produktami.*/
SELECT zamowienia.NumerZamowienia, klienci.ImieKlienta, klienci.NazwiskoKlienta, produkty.NazwaProduktu
FROM zamowienia
INNER JOIN klienci ON zamowienia.IDKlienta = klienci.IDKlienta
INNER JOIN dane_zamowien ON zamowienia.NumerZamowienia = dane_zamowien.NumerZamowienia
INNER JOIN produkty ON dane_zamowien.NumerProduktu = produkty.NumerProduktu
WHERE MONTH(zamowienia.DataZamowienia) = 10


