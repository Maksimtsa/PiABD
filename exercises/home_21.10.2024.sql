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
