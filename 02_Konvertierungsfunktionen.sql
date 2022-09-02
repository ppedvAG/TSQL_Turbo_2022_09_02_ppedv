USE Northwind;

SELECT CAST(GETDATE() AS date); --Nur Datum von heute ausgeben

SELECT CAST(GETDATE() AS time); --Nur Zeit von heute ausgeben

SELECT HireDate, CAST(HireDate AS date) FROM Employees; --CAST auf eine Spalte

SELECT '123' + 3; --Automatische Konvertierung (123 + 3 = 126)

SELECT '123.4' + 3; --Nicht möglich (nur int)

SELECT CAST('123.4' AS float) + 3; --Explizit konvertieren

SELECT CAST('123.4' AS decimal(6, 2)) + 3; --decimal: Erster Wert -> Gesamtstellen, Zweiter Wert -> Anzahl Kommastellen

SELECT CAST(GETDATE() AS varchar); --Etwas schönere Form von einem Datum

SELECT CAST(GETDATE() AS varchar(11)); --Bei Konvertierung nur die ersten 11 Zeichen nehmen (nicht praktikabel)

SELECT CAST('2022-09-02' AS date); --String zu Datum konvertieren

SELECT CAST('2022-09-02 11:12:23' AS datetime); --Zeit auch hinzufügen

SELECT CAST('02/09/2022' AS date); --Format beachten
SELECT CAST('02.09.2022' AS date); --Funktionieren hier beide

-----------------------------------------------------------------

SELECT CONVERT(DATE, GETDATE()); --CONVERT: selbiges wie CAST nur andere Schreibweise (älter)

SELECT CONVERT(varchar, GETDATE(), 104); --Deutsches Datum mit Code 104
SELECT CONVERT(varchar, GETDATE(), 4); --Kurzform vom Jahr mit Code 4

SELECT CONVERT(varchar, GETDATE(), 23); --ISO Datum mit Code 23

--https://docs.microsoft.com/en-us/sql/t-sql/functions/cast-and-convert-transact-sql?view=sql-server-2017#date-and-time-styles

-----------------------------------------------------------------

/*
Intervalle:
    year, yyyy, yy = Year
    month, MM, M = month
    week, ww, wk = Week
    day, dd, d = Day
    hour, hh = hour
    minute, mi, n = Minute
    second, ss, s = Second
    millisecond, ms = Millisecond
	nanosecond, ns

    weekday, dw, w = Weekday (1-7)
    dayofyear, dy, y = Day of the year (1-366)
    quarter, qq, q = Quarter (1-4)
*/

SELECT FORMAT(GETDATE(), 'yyyy-MM-dd'); --Datumsformat mit hoher Präzision angeben

SELECT FORMAT(GETDATE(), 'yyMMdd');

SELECT FORMAT(GETDATE(), 'MMMM dddd'); --MMMM und dddd für schönes Monat/Tag

SELECT FORMAT(GETDATE(), 'dddd, dd. MMMM yyyy hh:mm:ss'); --Schönstes mögliches deutsches Datum

SELECT FORMAT(GETDATE(), 'd'); --02.09.2022

SELECT FORMAT(GETDATE(), 'D'); --Freitag, 2. September 2022

SELECT FORMAT(1234, '#-#-#-#'); --mit # einen Platzhalter schaffen für ein Zeichen

SELECT FORMAT(1234, '#-#'); --Erste # hält 3 Zeichen, zweite eines

SELECT FORMAT(12345, '#§#_#');

----------------------------------------------------------

SELECT FORMAT(HireDate, 'dd.MM.yyyy') FROM Employees;

SELECT FORMAT(HireDate, 'd') FROM Employees;

SELECT FORMAT(HireDate, 'D') FROM Employees;