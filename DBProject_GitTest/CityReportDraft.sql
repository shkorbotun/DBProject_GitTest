USE [AdventureWorks2008R2]
GO

;WITH core_set as 
(
SELECT	 [CountryRegionName]
		,[City]
		,COUNT(*) As TotalCities
FROM	 [Sales].[vStoreWithAddresses]
GROUP BY [CountryRegionName]
		,[City]
),
grouping_set As 
(
SELECT	CountryRegionName
		,TotalCities As Stores
		,COUNT(*) As Cities
FROM	core_set
GROUP BY CountryRegionName
		,TotalCities
),
combined_set As 
(
SELECT	CountryRegionName
		,Stores
		,QUOTENAME(CAST(Stores as varchar(3))+'-'+CAST(Cities as varchar(3)),'[]') As Stores_Cities
FROM	grouping_set
),

total_set As
(
SELECT	 [CountryRegionName]
		,COUNT([City]) As TotalStores
		,COUNT(distinct [City]) As TotalCities
FROM	 [Sales].[vStoreWithAddresses]
GROUP BY [CountryRegionName]
)

SELECT	CS.CountryRegionName
		,TotalStores
		,TotalCities
		,CAST(
		 (SELECT	
					Stores_Cities + ' '
		  FROM		combined_set
		  WHERE		CountryRegionName = CS.CountryRegionName
		  ORDER BY	Stores
		  FOR XML PATH (''), TYPE)
		  As NVARCHAR(max)
		  )
		  As Stores_Cities
		  
FROM	total_set As CS