SELECT territoryid,
       customerid,
       Count (DISTINCT salespersonid) AS CountOfSalesPeople
FROM   sales.salesorderheader
WHERE  salespersonid IS NOT NULL
GROUP  BY territoryid,
          customerid
ORDER  BY territoryid,
          customerid 


