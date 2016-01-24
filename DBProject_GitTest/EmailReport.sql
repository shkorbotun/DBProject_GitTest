/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 10 [BusinessEntityID]
      ,[EmailAddressID]
      ,[EmailAddress]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2008R2].[Person].[EmailAddress]