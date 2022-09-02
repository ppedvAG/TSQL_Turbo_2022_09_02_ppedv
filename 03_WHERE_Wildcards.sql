--<, >, <=, >=  kleiner, größer, kleiner-gleich, größer-gleich
--=, !=, <>  gleich, ungleich, ungleich (selbe Funktion)
--BETWEEN, IN -> BETWEEN: zwischen X und Y (Grenzen inkludiert), IN: Liste für valide Werte angeben
--AND, OR statt && und ||
--NOT statt !

USE Northwind;

SELECT * FROM Orders WHERE Freight >= 50;

SELECT * FROM Orders WHERE Freight >= 50 ORDER BY Freight;

SELECT * FROM Orders WHERE Freight >= 50 AND EmployeeID = 3;

SELECT * FROM Orders WHERE Freight >= 50 OR EmployeeID = 1;

SELECT * FROM Orders WHERE Freight BETWEEN 50 AND 100; --Grenzen sind dabei

SELECT * FROM Orders WHERE EmployeeID BETWEEN 1 AND 3; --Hier besser sichtbar

SELECT * FROM Orders WHERE ShippedDate BETWEEN '1997-01-01' AND '1997-12-31'; --Funktioniert hier nicht

SELECT * FROM Orders WHERE ShippedDate BETWEEN '19970101' AND '19971231' ORDER BY ShippedDate; --Funktioniert hier nicht

SELECT * FROM Orders WHERE YEAR(ShippedDate) = 1997; --Funktionen im WHERE

SELECT * FROM Orders WHERE DATEPART(DAY, ShippedDate) = 12;

SELECT * FROM Orders WHERE ShipCountry = 'Austria' OR ShipCountry = 'Germany' OR ShipCountry = 'Sweden'; --unübersichtlich

SELECT * FROM Orders WHERE ShipCountry IN('Austria', 'Germany', 'Sweden'); --Selbiges wie oben nur mit IN

SELECT * FROM Orders WHERE EmployeeID IN(1, 4, 5); --Alle Order die von 1, 4 oder 5 bearbeitet wurden

SELECT * FROM Orders WHERE ShipCountry = 'Germany';

SELECT * FROM Customers WHERE Fax = NULL; --= NULL funktioniert nicht

SELECT * FROM Customers WHERE Fax IS NULL; --NULL Vergleich muss mit IS gemacht werden

SELECT * FROM Customers WHERE Fax IS NOT NULL;

SELECT * FROM Orders WHERE Freight NOT BETWEEN 50 AND 100; --BETWEEN invertieren

SELECT * FROM Orders WHERE ShipCountry NOT IN('Austria', 'Germany', 'Sweden'); --NOT kann auch bei IN verwendet werden

----------------------------------------------------------------

--LIKE Operator: Wildcards auslesen

SELECT * FROM Customers WHERE Country LIKE 'A%'; --Alle Customer aus Ländern die mit A anfangen (A und danach beliebig viele Zeichen)

SELECT * FROM Customers WHERE Country LIKE 'a%'; --Case Insensitive wie bei Funktionen

SELECT * FROM Customers WHERE Country LIKE '%A'; --Alle Customer bei denen Land mit A endet

SELECT * FROM Customers WHERE Country LIKE '%A%'; --A in der Mitte (Andorra fällt auch hinein, da beliebig viele Zeichen auch keine Zeichen sein können)

SELECT * FROM Customers WHERE Country LIKE '%A%A%'; --2 A's in der Mitte

SELECT * FROM Customers WHERE City LIKE '_ünchen'; --_: Ein beliebiges Zeichen

SELECT * FROM Customers WHERE PostalCode LIKE '____'; --Alle 4-Stelligen Postleitzahlen suchen

SELECT * FROM Customers WHERE PostalCode LIKE '1____'; --Alle 5-Stelligen Postleitzahlen die mit 1 anfangen

SELECT * FROM Customers WHERE ContactName LIKE '[agn]%'; --Alle Kunden die mit A, G oder N anfangen

SELECT * FROM Orders WHERE EmployeeID LIKE '[126]';

SELECT * FROM Customers WHERE ContactName LIKE '[a-d]%'; --Alle Customer mit einem Namen von A bis D

SELECT * FROM Customers WHERE ContactName LIKE '[^a-d]%'; --Klammer invertieren mit ^

SELECT * FROM Customers WHERE ContactName LIKE '[a-d|x-z]%'; --Range erweitern mit |

SELECT * FROM Customers WHERE CompanyName LIKE '%[%]%'; --Sonderfall: Nach Prozent suchen

SELECT * FROM Customers WHERE CompanyName LIKE '%['']%'; --Sonderfall: Nach Hochkomma suchen