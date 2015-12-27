USE AdventureWorks2008R2
GO
WITH core_set as
(
SELECT	[FirstName]
		,COUNT(*) As TotalNumber
FROM	[HumanResources].[vEmployee]
GROUP BY [FirstName]
),
condition as
(SELECT distinct TotalNumber 
 FROM core_set)
 
SELECT	*
FROM	core_set
WHERE	TotalNumber in

(
SELECT	TOP 5
		TotalNumber
FROM	condition
ORDER BY TotalNumber desc
)
ORDER BY TotalNumber desc