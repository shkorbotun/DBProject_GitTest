USE AdventureWorks2008R2
GO
WITH core_set as
(
SELECT	[FirstName]
		,COUNT(*) As TotalNumber
FROM	[HumanResources].[vEmployee]
GROUP BY [FirstName]
)
SELECT	top 10 
		*
FROM	core_set
ORDER BY TotalNumber desc