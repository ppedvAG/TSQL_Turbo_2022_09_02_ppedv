USE Northwind;

SELECT CompanyName, Address + ' ' + City + ', ' + PostalCode + ' ' + Country AS Adresse FROM Customers;

SELECT CompanyName, CONCAT(Address, ' ', City, ', ', PostalCode, ' ', Country) AS Adresse FROM Customers; --CONCAT: Alle Spalten kombinieren wie String +

SELECT CompanyName, CONCAT_WS(' ', Address, City, PostalCode, Country) FROM Customers; --CONCAT_WS: Concat with Seperator

SELECT TRIM('    Test     '); --Alle Abstände links und rechts entfernen
SELECT LTRIM('    Test     '); --Alle Abstände links entfernen
SELECT RTRIM('    Test     '); --Alle Abstände rechts entfernen

SELECT LOWER('Test'); --Alle Zeichen klein
SELECT UPPER('Test'); --Alle Zeichen groß

SELECT LEN('Test'); --Länge vom String (4)
SELECT LEN('Test '); --macht automatisch ein RTRIM (auch 4)
SELECT LEN(' Test'); --macht kein LTRIM (5)
SELECT DATALENGTH(' Test '); --Kein TRIM (6)

SELECT REVERSE('Test'); --Dreht string um

SELECT LEFT('Testtext', 4); --Von links X Zeichen nehmen
SELECT RIGHT('Testtext', 4); --Von rechts X Zeichen nehmen
SELECT SUBSTRING('Testtext', 2, 4); --In TSQL wird bei 1 angefangen zu zählen (vom Zeichen 2, 4 Zeichen nehmen estt)

SELECT STUFF('Testtext', 2, 0, '_Hallo_'); --Vor Zeichen 2 meinen neuen String einbauen
SELECT STUFF('Testtext', 2, 7, '_Hallo_'); --Vor Zeichen 2 meinen neuen String einbauen und die nächsten 7 Zeichen überschreiben

SELECT REPLICATE('xy', 4); --String X mal replizieren

SELECT REPLACE('Testtext', 'e', '/'); --Ersetzt alle E's mit /
SELECT REPLACE('Testtext', 't', '/'); --Ersetzt alle T's mit / (Case Insensitive)

SELECT CHARINDEX('e', 'Testtext'); --Suche ein Zeichen und gib das erste Vorkommen als Zahl zurück (2)
SELECT CHARINDEX('t', 'Testtext'); --Auch Case Insensitive
SELECT CHARINDEX('e', 'Testtext', 4); --Suche ab einer bestimmten Stelle (hier erstes T in der Mitte) -> 6

----------------------------------------------------------------

SELECT REPLACE(CompanyName, 'A', 'B') FROM Customers;
SELECT LEFT(CompanyName, 4) FROM Customers;
SELECT UPPER(LEFT(CompanyName, 4)) FROM Customers;