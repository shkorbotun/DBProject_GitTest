USE [AdventureWorks2008R2]
GO
WITH core_set as
(
SELECT	[JobTitle]
		,COUNT(*) As PersonTotal

FROM	[HumanResources].[vEmployee]
GROUP BY [JobTitle]
)

SELECT	ROW_NUMBER() over(order by [JobTitle]) As RowNumber
		,[JobTitle]
		,PersonTotal
		,ROUND(cast(PersonTotal as float)/(SELECT SUM(PersonTotal) FROM core_set)*100,1) As ShareOfTotal
FROM	core_set