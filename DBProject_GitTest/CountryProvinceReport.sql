USE [AdventureWorks2008R2]
GO

SELECT	 [CountryRegionName]
		,[StateProvinceName]
		
FROM	[Person].[vStateProvinceCountryRegion]
ORDER BY [CountryRegionName] DESC