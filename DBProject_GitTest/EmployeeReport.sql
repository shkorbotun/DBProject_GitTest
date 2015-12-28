USE [AdventureWorks2008R2]
GO
WITH core_set as
(
SELECT	[JobTitle]
		,COUNT(*) As Total

FROM	[HumanResources].[vEmployee]
GROUP BY [JobTitle]
)

SELECT	ROW_NUMBER() over(order by [JobTitle]) As RowNumber
		,[JobTitle]
		,Total
		,ROUND(cast(Total as float)/(SELECT SUM(Total) FROM core_set)*100,1) As ShareOfTotal
FROM	core_set