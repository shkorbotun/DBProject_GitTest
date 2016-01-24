USE [AdventureWorks2008R2]
GO
SELECT		
			[City]		As CityFullName
			,COUNT(*)	AS TotalPersons
			,COUNT(distinct [City])	AS TotalCities
FROM		[Person].[Address]
GROUP BY	[City]
ORDER BY	Persons ASC