USE AdventureWorks2008R2
GO
SELECT		[GroupName]
			,count(*) As Departments
FROM		[HumanResources].[Department]
GROUP BY	[GroupName]
ORDER BY	DepartmentNumber