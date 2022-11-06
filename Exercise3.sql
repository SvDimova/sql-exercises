SELECT 
  ProductID, 
  SpecialOfferID, 
  SUM (LineTotal) AS SubTotal, 
  AVG (UnitPrice) AS UnitPrice, 
  MAX(UnitPrice) AS MaxPrice, 
  MIN(UnitPrice) AS MinPrice, 
  SUM(UnitPrice * UnitPriceDiscount) AS DiscountTotal 
FROM 
  Sales.SalesOrderDetail 
GROUP BY 
  ProductID, 
  SpecialOfferID 
ORDER BY 
  ProductID, 
  SpecialOfferID