SELECT 
  HD.Name AS DepartmentName, 
  HS.Name AS ShiftName, 
  COUNT(HEDH.BusinessEntityID) AS Employees 
FROM 
  HumanResources.EmployeeDepartmentHistory AS HEDH 
  JOIN HumanResources.Department AS HD ON HEDH.DepartmentID = HD.DepartmentID 
  JOIN HumanResources.Shift AS HS ON HEDH.ShiftID = HS.ShiftID 
WHERE 
  HD.Name = 'Production' 
GROUP BY 
  HD.Name, 
  HS.Name 
ORDER BY 
  DepartmentName, 
  ShiftName
