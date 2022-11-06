SELECT 
  PP.ProductID, 
  PP.Name AS ProductName, 
  POH.OrderDate, 
  SUM(POD.OrderQty) AS QuantityOrdered 
FROM 
  Purchasing.PurchaseOrderDetail AS POD 
  JOIN Production.Product AS PP ON POD.ProductID = PP.ProductID 
  JOIN Purchasing.PurchaseOrderHeader AS POH ON POD.PurchaseOrderID = POH.PurchaseOrderID 
WHERE 
  POH.OrderDate BETWEEN '2013-01-01 00:00:00' 
  AND '2013-12-31 00:00:00' 
GROUP BY 
  PP.ProductID, 
  PP.Name, 
  POH.OrderDate 
ORDER BY 
  QuantityOrdered DESC
