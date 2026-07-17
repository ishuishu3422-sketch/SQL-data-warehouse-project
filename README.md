# SQL-data-warehouse-project
SQL Server Analytics Hub &amp; ETL Framework 

This project is a hands-on implementation of a modern data warehouse built entirely on Microsoft SQL Server. It follows the Medallion architecture (Bronze, Silver, Gold layers) to ingest, clean, and transform raw source data into a structured, analyst-ready dimensional model. The entire ETL process is automated using T-SQL stored procedures, ensuring a repeatable and scalable data pipeline.

The primary goal is to centralize disparate data sources into a single source of truth, enabling business analysts to generate insights, build dashboards, and perform ad-hoc queries efficiently

The project implements a clear, three-layer architecture to handle data progressively.

Layer	Name	Description	Key Actions

Bronze-	Raw Ingestion	The landing zone for raw data ingested directly from source systems. Data is stored exactly as received, preserving the original format.	Data ingestion, basic staging.

Silver-	Cleansing & Conformance	The transformation layer where raw data is cleaned, standardized, and conformed. Business rules are applied, duplicates are removed, and data quality is ensured.	Data cleansing, standardization, deduplication, handling missing values.

Gold-	Business-Ready Aggregates	The presentation layer designed specifically for BI and analytics. Data is modeled into a Star Schema with fact and dimension tables, optimized for high-performance queries.	Data modeling (Star Schema), creation of facts and dimensions, aggregation.
