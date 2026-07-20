/*
===============================================================================
Database and Schema Setup Script

Script Purpose:
    This script initializes the 'DataWarehouse' database, removing any existing 
    version before creation. It also establishes three core schemas: 
    'bronze' (raw ingestion), 'silver' (cleaned/validated), and 'gold' 
    (aggregated/business-ready).

  IMPORTANT NOTICE:
    Executing this script will completely remove the 'DataWarehouse' database 
    if it currently exists. All stored data, tables, views, and procedures 
    within it will be permanently erased. 

    Please verify that you have a valid backup before proceeding. 
    This operation is irreversible.
===============================================================================
*/
USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
