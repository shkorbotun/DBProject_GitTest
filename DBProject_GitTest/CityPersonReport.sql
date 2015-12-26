USE [AdventureWorks2008R2]
GO
SELECT		[City]		As CityName
			,COUNT(*)	AS Persons
FROM		[Person].[Address]
GROUP BY	[City]
ORDER BY	Persons DESC