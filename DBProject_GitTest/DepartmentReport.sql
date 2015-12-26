USE AdventureWorks2008R2
GO
SELECT		[GroupName]
			,count(*) As DepartmentNumber
FROM		[HumanResources].[Department]
GROUP BY	[GroupName]
ORDER BY	[GroupName]