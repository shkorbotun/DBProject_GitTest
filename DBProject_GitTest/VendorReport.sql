USE [AdventureWorks2008R2]
GO

SELECT	 StateProvinceName As State
		,COUNT(*) As Vendors

FROM	[Purchasing].[vVendorWithAddresses]
GROUP BY StateProvinceName
ORDER BY Vendors desc