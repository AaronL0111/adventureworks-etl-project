IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'gold')
    EXEC('CREATE SCHEMA gold;');
GO


-- CALENDAR
IF OBJECT_ID('gold.calendar', 'V') IS NOT NULL
    DROP VIEW gold.calendar;
GO

CREATE VIEW gold.calendar
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://aastorage0111.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO


-- CUSTOMERS
IF OBJECT_ID('gold.customers', 'V') IS NOT NULL
    DROP VIEW gold.customers;
GO

CREATE VIEW gold.customers
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://aastorage0111.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO


-- PRODUCTS
IF OBJECT_ID('gold.products', 'V') IS NOT NULL
    DROP VIEW gold.products;
GO

CREATE VIEW gold.products
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://aastorage0111.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO


-- RETURNS
IF OBJECT_ID('gold.returns', 'V') IS NOT NULL
    DROP VIEW gold.returns;
GO

CREATE VIEW gold.returns
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://aastorage0111.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO


-- SALES
IF OBJECT_ID('gold.sales', 'V') IS NOT NULL
    DROP VIEW gold.sales;
GO

CREATE VIEW gold.sales
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://aastorage0111.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO


-- SUBCATEGORIES
IF OBJECT_ID('gold.subcat', 'V') IS NOT NULL
    DROP VIEW gold.subcat;
GO

CREATE VIEW gold.subcat
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://aastorage0111.blob.core.windows.net/silver/AdventureWorks_SUbCategories/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO


-- TERRITORIES
IF OBJECT_ID('gold.territories', 'V') IS NOT NULL
    DROP VIEW gold.territories;
GO

CREATE VIEW gold.territories
AS
SELECT *
FROM OPENROWSET(
    BULK 'https://aastorage0111.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS QUER1;
GO
