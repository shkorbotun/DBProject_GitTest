USE [AdventureWorks2008R2]
GO

SELECT	 [SalesTerritory]
		,[JobTitle]
		,[FullName]
		,[2006]
		,[2007]
		,[2008]

FROM	[Sales].[vSalesPersonSalesByFiscalYears]

ORDER BY	 [SalesTerritory]
			,[JobTitle]
			,[FullName]