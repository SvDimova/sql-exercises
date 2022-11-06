SELECT territoryid,
       salespersonid,
       Sum (totaldue) AS TotalDue
FROM   sales.salesorderheader
GROUP  BY territoryid,
          salespersonid
ORDER  BY territoryid,
          salespersonid 