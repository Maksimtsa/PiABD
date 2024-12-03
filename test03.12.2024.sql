zad 1
SELECT dostawcy.NazwaDostawcy, produkty.NazwaProduktu
FROM dostawcy
INNER JOIN dostawcy_produktow ON dostawcy.IDDostawcy = dostawcy_produktow.IDDostawcy
INNER JOIN produkty ON dostawcy_produktow.NumerProduktu = produkty.NumerProduktu
WHERE produkty.CenaDetaliczna < 100

zad 2
SELECT klienci.ImieKlienta, klienci.NazwiskoKlienta, agenci.ImieAgenta, agenci.NazwiskoAgenta, klienci.MiastoKlienta, agenci.MiastoAgenta
FROM klienci, agenci
WHERE klienci.MiastoKlienta = agenci.MiastoAgenta
ORDER BY klienci.MiastoKlienta

zad 3
SELECT zamowienia.NumerZamowienia, zamowienia.DataZamowienia, produkty.NumerProduktu, produkty.CenaDetaliczna, dane_zamowien.ZamowionaIlosc, dane_zamowien.CenaZakupu
FROM zamowienia
INNER JOIN dane_zamowien ON zamowienia.NumerZamowienia = dane_zamowien.NumerZamowienia
INNER JOIN produkty ON dane_zamowien.NumerProduktu = produkty.NumerProduktu
ORDER BY zamowienia.NumerZamowienia DESC
