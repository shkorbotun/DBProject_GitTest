USE [AdventureWorks2008R2]
GO
SELECT	 [CountryRegionName]
		,[City]
		,COUNT(*) As Total
FROM	 [Sales].[vStoreWithAddresses]
GROUP BY [CountryRegionName]
		,[City]
ORDER BY [CountryRegionName]
		,[City]