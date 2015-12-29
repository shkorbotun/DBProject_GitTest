USE [AdventureWorks2008R2]
GO

SELECT	 StateProvinceName As State
		,COUNT(City) As Vendors
		,COUNT(distinct City) As City

FROM	[Purchasing].[vVendorWithAddresses]
GROUP BY StateProvinceName
ORDER BY Vendors desc