USE AdventureWorks2008R2
GO
SELECT		[GroupName]
			,count(*) As TotalDepartments
FROM		[HumanResources].[Department]
GROUP BY	[GroupName]
ORDER BY	[GroupName]