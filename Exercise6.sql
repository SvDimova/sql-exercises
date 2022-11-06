SELECT 
  FirstName 
FROM 
  Person.Person 
WHERE 
  FirstName NOT IN ('Robert', 'James') 
  AND Title IS NOT NULL;