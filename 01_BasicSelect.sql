USE Northwind; --Datenbank ansprechen/benutzen

/*
	Mehrzeilige
	Kommentare
*/

SELECT 100; --Einzelnen Wert ausgeben

SELECT 'Test'; --String mit einzelnen Hochkomma

SELECT 100 * 3; --Markieren + Strg + E: Einzelnen Befehl ausführen

SELECT '100 * 3'; --Wird nicht ausgeführt, da String

--Strg + R: Ergebnisansicht schließen

SELECT 'Test' AS Text; --AS: Spalte einen Namen geben

SELECT 10 AS Zahl, 'Test' AS Text; --Mehrere Spalten mit Beistrich getrennt auswählen

SELECT 10.5; --Kommazahlen mit Punkt

SELECT * FROM Customers; --Mit * alle Spalten auswählen

SELECT CompanyName FROM Customers; --Einzelne Spalten auswählen

SELECT CompanyName, ContactName FROM Customers; --Mehrere Spalten auswählen

SELECT Freight * 3 FROM Orders; --Auf eine Spalte eine Berechnung ausführen

SELECT Freight * 3 AS FreightMal3 FROM Orders; --Hier mit AS der Spalte einen Namen geben

SELECT Freight % 5 FROM Orders; --%: Modulo Operator

SELECT CompanyName + Address + City + PostalCode + Country FROM Customers; --Strings verbinden mit + (unschön)

SELECT CompanyName + ' ' + Address + ' ' + City + ', ' + PostalCode + ' ' + Country AS [Volle Adresse] FROM Customers;

SELECT DISTINCT Country FROM Customers; --DISTINCT: Tabellenspalte einzigartig machen

SELECT Country FROM Customers ORDER BY Country; --Nach Country sortieren

SELECT * FROM Customers ORDER BY ContactName; --Ganze Tabelle sortieren

SELECT * FROM Customers ORDER BY Country, CompanyName; --Tabelle nach mehreren Kriterien sortieren (primär Country, sekundär CompanyName)