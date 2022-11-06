SELECT 
  PMPD.ProductModelID, 
  PM.Name as ProductModelName, 
  PD.Description as ProductDescription, 
  PC.Name AS Language 
FROM 
  Production.ProductModelProductDescriptionCulture AS PMPD 
  JOIN Production.ProductDescription AS PD ON PMPD.ProductDescriptionID = PD.ProductDescriptionID 
  INNER JOIN Production.ProductModel AS PM ON PMPD.ProductModelID = PM.ProductModelID 
  INNER JOIN Production.Culture AS PC ON PMPD.CultureID = PC.CultureID 
WHERE 
  PC.Name NOT IN ('English');
