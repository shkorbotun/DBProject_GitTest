USE [AdventureWorks2008R2]
GO
SELECT	 [CountryRegionName]
		,COUNT([City]) As TotalStores
		,COUNT(distinct [City]) As TotalCities
FROM	 [Sales].[vStoreWithAddresses]
GROUP BY [CountryRegionName]
ORDER BY [CountryRegionName] desc


