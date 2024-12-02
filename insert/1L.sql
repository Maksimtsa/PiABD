--zad 1
UPDATE klienci SET klienci.nazwisko = "Psikuta"

--zad2
UPDATE ksiazki SET ksiazki.cena = ROUND(ksiazki.cena * 1.1,2)

--zad 3
UPDATE ksiazki SET ksiazki.cena = ksiazki.cena - 10
ORDER BY ksiazki.cena 
LIMIT 1

--zad 4
UPDATE klienci SET klienci.imie = "Joanna", klienci.nazwisko = "Dostojewska" 
WHERE klienci.idklienta = 10

--zad 5
UPDATE zamowienia SET zamowienia.status = "wyslano"
WHERE zamowienia.idzamowienia BETWEEN 4 AND 5


--zad 6
INSERT INTO klienci VALUES(NULL, "Franciszek", "Janowski", "Chorzów")


--zad 7
INSERT INTO zamowienia (zamowienia.idzamowienia, data, klienci.idklienta, ksiazki.idksiazki)
VALUES(NULL, "oczekiwanie", 7, 3)


--zad 8
INSERT INTO ksiazki (ksiazki.idksiazki, ksiazki.nazwiskoautora, ksiazki.tytul)
VALUES(NULL, "Grębosz", "Symfonia C++")


--zad 9
INSERT INTO klienci VALUES(NULL, "Marylin", "Mornoe","LA"), (NULL, "John", "Wayne", "LA") 
--insert into klienci SET idk = ..., imie= ..., ....

--zad 10
UPDATE klienci SET klienci.imie = "Władysław"
WHERE klienci.idklienta = 16


--zad 11
INSERT INTO klienci VALUES(NULL, "Agamemnon", "Listkowski", "Czarna Góra")


--zad 12
DELETE FROM klienci
WHERE klienci.idklienta > 10

--26.11.2024

--NOWY UZITKOWNIK
CREATE USER Maksim IDENTIFIED BY "hasło"

--usunięcie
DROP USER "Matka"@"localhost"

--update password
SET PASSWORD = PASSWORD "Hasło zastępcze"
  
--wszystkie
SELECT USER, host, PASSWORD FROM mysql.user;


GRANT CREATE ON *,* To 'Maksim'@'localhost'
GRANT UPDATE ON *.* To Maksim

GRANT ALL PRIVILEGES on *.* TO Maksim

--ROVOKE 
