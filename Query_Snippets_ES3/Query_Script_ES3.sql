-- 1) Numero totale degli ordini
SELECT Count(*) AS TotalOrders FROM Orders
--FINE

-- 2) Numero totale di clienti
SELECT Count(*) AS TotalCutomers FROM Customers
--FINE

-- 3) Numero totale di clienti che abitano a Londra
SELECT Count(*) AS TotalCustomersInUK FROM Customers WHERE City = 'London'
--FINE

-- 4) La media aritmetica del costo del trasporto di tutti gli ordini effettuati
SELECT AVG(Freight) AS MidCostFreight FROM Orders
--FINE

-- 5) La media aritmetica del costo del trasporto dei soli ordini effettuati dal cliente "BOTTM"
 SELECT AVG(Freight) AS MidCostFreight FROM Orders WHERE CustomerID = 'BOTTM'
--FINE

-- 6) Totale delle spese di trasporto effettuate raggruppate per id cliente
SELECT SUM(Freight) AS TotFreightIndividual FROM Orders GROUP BY CustomerID
--FINE

-- 7) Numero totale di clienti raggruppati per città di appartenenza
SELECT City, COUNT(*) AS TotalCustomers FROM dbo.Customers GROUP BY City;
--FINE

-- 8) Totale di UnitPrice * Quantity raggruppato per ogni ordine
SELECT SUM(UnitPrice * Quantity) AS TotalAmount FROM [Order Details] GROUP BY OrderID
--FINE

-- 9) Totale di UnitPrice * Quantity solo dell'ordine con id=10248
SELECT SUM(UnitPrice * Quantity) AS TotalAmountGroup FROM [Order Details] WHERE OrderID = 10248
--FINE

-- 10) Numero di prodotti censiti per ogni categoria
SELECT CategoryID, COUNT(*) AS TotalProducts FROM dbo.Products GROUP BY CategoryID;
--FINE

-- 11) Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)
SELECT  ShipCountry, COUNT(*) AS TotOrdersForShipCountry  FROM Orders GROUP BY ShipCountry
 --FINE

 -- 12) La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)
SELECT ShipCountry, AVG(Freight) AS MidFreightCostForShipCountry  FROM Orders  GROUP BY ShipCountry
--FINE
