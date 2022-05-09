 --- Clean Customer tables 

SELECT  
	c.CustomerKey AS CustomerKey,
    --  ,[GeographyKey]
    --  ,[CustomerAlternateKey]
    --  ,[Title]
	c.firstname AS [First Name],
    -- ,[MiddleName]
    c.lastname AS [Last Name],
	c.firstname + ' ' +    c.lastname AS [Full Name],
    --  ,[NameStyle]
    -- ,[BirthDate]
    --  ,[MaritalStatus]
    --  ,[Suffix]
	CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
    --  ,[Gender]
    -- ,[EmailAddress]
    --  ,[YearlyIncome]
    --  ,[TotalChildren]
    --  ,[NumberChildrenAtHome]
    --  ,[EnglishEducation]
    --  ,[SpanishEducation]
    --  ,[FrenchEducation]
    --  ,[EnglishOccupation]
    --  ,[SpanishOccupation]
    --  ,[FrenchOccupation]
    --  ,[HouseOwnerFlag]
    --  ,[NumberCarsOwned]
    --  ,[AddressLine1]
    --  ,[AddressLine2]
    --  ,[Phone]
    --  ,[DateFirstPurchase]
	c.DateFirstPurchase AS DateFirstPurchase,
    --  ,[CommuteDistance]
	g.city AS [Customer City] --Join in Customer City from Geography Table
  FROM  
	[dbo].[DimCustomer] AS c
	LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey  = c.GeographyKey
  ORDER BY
	CustomerKey ASC --Odered List By Customers