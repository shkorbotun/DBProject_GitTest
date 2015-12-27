USE [AdventureWorks2008R2]
GO

SELECT	 [SalesTerritory]
		,[JobTitle]
		,[FullName]
		,[2006]
		,[2007]
		,[2008]
		,DENSE_RANK() OVER (partition by [SalesTerritory] order by [2006] desc) As Rank_2006
		,DENSE_RANK() OVER (partition by [SalesTerritory] order by [2007] desc) As Rank_2007
		,DENSE_RANK() OVER (partition by [SalesTerritory] order by [2008] desc) As Rank_2008
		,[2006] + [2007] + [2008] As Total
		,DENSE_RANK() OVER (partition by [SalesTerritory] order by ([2006] + [2007] + [2008]) desc) As Rank_Total

FROM	[Sales].[vSalesPersonSalesByFiscalYears]

ORDER BY	 [SalesTerritory]
			,Total desc