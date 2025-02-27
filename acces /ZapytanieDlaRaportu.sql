SELECT Kategorie.OpisKategorii, sum(Produkty.CenaDetaliczna*Dane_zamowien.ZamowionaIlosc) AS wartosc, Month(Zamowienia.DataZamowienia) AS miesiac, YEAR(Zamowienia.DataZamowienia) AS rok
FROM Zamowienia INNER JOIN ((Kategorie INNER JOIN Produkty ON Kategorie.IDKategorii=Produkty.IDKategorii) INNER JOIN Dane_zamowien ON Produkty.NumerProduktu=Dane_zamowien.NumerProduktu) ON Zamowienia.NumerZamowienia=Dane_zamowien.NumerZamowienia
GROUP BY Kategorie.OpisKategorii, Month(Zamowienia.DataZamowienia), YEAR(Zamowienia.DataZamowienia);
