USE Northwind;

SELECT * FROM Customers ORDER BY Country;

SELECT * FROM Customers ORDER BY Country, City; --Primäre + Sekundäre Sortierung

SELECT * FROM Customers ORDER BY Country DESC; --ASC/DESC: Sortierrichtung angeben (DESC -> Absteigend, ASC -> Aufsteigend)

SELECT CustomerID, Address, Phone, Country FROM Customers ORDER BY 3; --Nach Spaltenindex sortieren (hier Phone = 3)

SELECT CustomerID, Address, Phone, Country FROM Customers ORDER BY 3, 1; --Hier auch Primär/Sekundärsortierung möglich

SELECT * FROM Customers ORDER BY 2; --Auch bei * ist Indexsortierung möglich

SELECT CONCAT_WS(' ', TitleOfCourtesy, FirstName, Lastname) AS FullName FROM Employees ORDER BY FullName; --Nach Spaltenalias sortieren

--------------------------------------------------------

SELECT Country FROM Customers ORDER BY 1;

SELECT DISTINCT Country FROM Customers; --Keine Duplikate mehr (91 -> 22), automatische Sortierung

SELECT City, Country FROM Customers ORDER BY 1;

SELECT DISTINCT Country, City FROM Customers ORDER BY 1; --Kombinationen von Country und City filtern (Country existiert mehrmals)

SELECT COUNT(*) FROM Customers; --Anzahl der Ergebnisse

SELECT COUNT(*) FROM Customers WHERE Country = 'Brazil'; --Anzahl Customer aus Brasilien (9)

SELECT COUNT(DISTINCT Country) FROM Customers; --In wievielen Ländern haben wir Kunden?

---------------------------------------------------------

SELECT TOP 10 * FROM Orders; --Obersten 10 Datensätze der Tabelle

SELECT TOP 10 * FROM Orders ORDER BY Freight; --TOP macht nur wirklich Sinn mit ORDER BY oder WHERE (10 billigsten Bestellungen)

SELECT TOP 10 * FROM Orders ORDER BY Freight DESC; --10 teuersten Bestellungen

SELECT TOP 2 PERCENT * FROM Orders ORDER BY Freight; --Top 2% billigsten Bestellungen

SELECT TOP 2 PERCENT * FROM Orders ORDER BY Freight DESC; --Top 2% teuerste Bestellungen

SELECT TOP 5 PERCENT
CustomerID,
CompanyName,
ContactName,
Phone,
City
FROM Customers
ORDER BY City; --Einzelne Spalten statt *

--WITH TIES: mit unentschieden
SELECT TOP 1 PERCENT *
FROM [Order Details]
ORDER BY Quantity; --22

SELECT TOP 1 PERCENT WITH TIES *
FROM [Order Details]
ORDER BY Quantity; --69