USE Northwind;

SELECT GETDATE(); --Jetztiges Datum, Millisekundengenau

SELECT SYSDATETIME(); --Jetztiges Datum, Nanosekundengenau

--YEAR/MONTH/DAY
SELECT YEAR(GETDATE()); --Jahr vom Datum zurückgeben
SELECT MONTH(GETDATE()); --Monat vom Datum zurückgeben
SELECT DAY(GETDATE()); --Tag vom Datum zurückgeben

SELECT YEAR(HireDate) AS Jahr, HireDate FROM Employees; --Datumsfunktionen auf Spalte anwenden

/*
Intervalle:
    year, yyyy, yy = Year
    month, MM, M = month
    week, ww, wk = Week
    day, dd, d = Day
    hour, hh = hour
    minute, mi, m = Minute
    second, ss, s = Second
    millisecond, ms = Millisecond
	nanosecond, ns

    weekday, dw, w = Weekday (1-7)
    dayofyear, dy, y = Day of the year (1-366)
    quarter, qq, q = Quarter (1-4)
*/

SELECT DATEPART(HOUR, GETDATE()); --Teil von einem Datum holen (selbe Funktionsweise wie YEAR(...), MONTH(...), ...)

SELECT DATEPART(QQ, GETDATE()); --Heutiges Quartal finden

SELECT DATEPART(DAYOFYEAR, GETDATE()); --Heutigen Tag finden (1-365)

SELECT DATEPART(WEEKDAY, GETDATE()); --Heutiger Wochentag (1-7)

SELECT DATEDIFF(YEAR, 2000, GETDATE()); --2000 wird als Tage interpretiert seit 01.01.1900 -> 24.06.1905

SELECT DATEDIFF(YEAR, '2000', GETDATE()); --Hier unbedingt string benutzen

--Bei Datumswerten am besten immer ISO-Datumsformatierung benutzen
--dd.MM.yyyy -> Deutsches Datum (kann funktionieren, muss aber nicht)

SELECT DATEDIFF(YEAR, '2000-09-02', GETDATE()); --Generell ISO Datum benutzen

SELECT DATEDIFF(DAY, '2000-01-01', GETDATE()); --Tage seit Anfangsdatum zählen

SELECT DATENAME(MONTH, GETDATE()); --Heutiges Monat schön ausgeben

SELECT DATENAME(WEEKDAY, GETDATE()); --Heutigen Wochentag schön ausgeben (hier Weekday benutzen)

SELECT DATEADD(DAY, 10, GETDATE()); --DATEADD: Intervall auf ein Datum hinzufügen

SELECT DATEADD(DAY, 40, GETDATE()); --Überschlag möglich

SELECT DATEADD(DAY, 730, GETDATE()); --Schaltjahre werden auch beachtet

SELECT DATEADD(DAY, -20, GETDATE()); --Mit negativer Zahl in die Vergangenheit gehen

SELECT DATEADD(QQ, 1, GETDATE()); --Ein Quartal addieren

------------------------------------------------------------------

SELECT HireDate, DATENAME(WEEKDAY, HireDate) FROM Employees; --DATENAME auf Spalte anwenden (an welchem Tag wurden unsere Mitarbeiter eingestellt)

SELECT HireDate, DATEDIFF(YEAR, HireDate, GETDATE()) FROM Employees; --Wie lange sind unsere Mitarbeiter schon eingestellt?

SELECT YEAR(HireDate) AS Jahr, HireDate FROM Employees;