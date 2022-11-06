SELECT 
  ProductID, 
  Name 
FROM 
  Production.Product 
WHERE 
  ProductID IN (1, 2, 3, 4);
SELECT 
  ProductID, 
  Name 
FROM 
  Production.Product 
WHERE 
  ProductID BETWEEN 1 AND 4;