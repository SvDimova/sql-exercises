SELECT 
  PP.FirstName, 
  PP.LastName, 
  HE.JobTitle, 
  HE.BirthDate, 
  HE.MaritalStatus, 
  HE.HireDate 
FROM 
  HumanResources.Employee AS HE 
  JOIN Person.Person AS PP ON HE.BusinessEntityID = PP.BusinessEntityID 
  JOIN HumanResources.EmployeeDepartmentHistory AS HEDH ON HEDH.BusinessEntityID = HE.BusinessEntityID 
  JOIN HumanResources.Department AS HD ON HEDH.DepartmentID = HD.DepartmentID 
WHERE 
  HEDH.DepartmentID = 4 
  and HE.HireDate < '2010-01-01 00:00:00' --BETWEEN '2010-01-01 00:00:00' and '2012-12-31 23:59:59' 
  and HEDH.EndDate IS NULL
