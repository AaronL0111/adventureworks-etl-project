-- ensure schema
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name='gold') EXEC('CREATE SCHEMA gold');
GO

-- credential
IF NOT EXISTS (SELECT * FROM sys.database_scoped_credentials WHERE name='cred_aaron')
    CREATE DATABASE SCOPED CREDENTIAL cred_aaron WITH IDENTITY='Managed Identity';
GO

-- data sources
IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name='source_silver')
    CREATE EXTERNAL DATA SOURCE source_silver
    WITH (LOCATION='https://aastorage0111.blob.core.windows.net/silver', CREDENTIAL=cred_aaron);
GO

IF NOT EXISTS (SELECT * FROM sys.external_data_sources WHERE name='source_gold')
    CREATE EXTERNAL DATA SOURCE source_gold
    WITH (LOCATION='https://aastorage0111.blob.core.windows.net/gold', CREDENTIAL=cred_aaron);
GO

CREATE EXTERNAL TABLE gold.extsales 
    WITH ( LOCATION='extsales/', DATA_SOURCE=source_gold, FILE_FORMAT=format_parquet ) 
    AS SELECT * FROM gold.sales;

select * from gold.extsales
