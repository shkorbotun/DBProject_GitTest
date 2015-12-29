USE [AdventureWorks2008R2]
GO

SELECT	 StateProvinceName As State
		,COUNT(City) As Vendors
		,COUNT(distinct City) As City
		,CAST(COUNT(City) as float)/COUNT(distinct City)

FROM	[Purchasing].[vVendorWithAddresses]
GROUP BY StateProvinceName
HAVING CAST(COUNT(City) as float)/COUNT(distinct City) >1
ORDER BY Vendors desc