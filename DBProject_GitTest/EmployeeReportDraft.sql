USE [AdventureWorks2008R2]
GO

SELECT	 [JobTitle]
		,COUNT(*) As Total

FROM	[HumanResources].[vEmployee]
GROUP BY [JobTitle]
ORDER BY Total desc