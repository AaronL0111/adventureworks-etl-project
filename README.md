
# 🏗️ AdventureWorks ETL Project

This repository showcases an **end-to-end data engineering pipeline** built using the **Azure ecosystem**, featuring **Azure Data Factory (ADF)**, **Azure Data Lake Storage (ADLS Gen2)**, and **Azure Databricks (PySpark)**.  

The project demonstrates how to extract, transform, and load data from the **AdventureWorks** sample dataset into a structured **Bronze–Silver–Gold** architecture for analytics and reporting.

---

## 🧩 Architecture Overview

Below is the high-level architecture and data flow across Azure services:

**(Insert architecture diagram here — e.g., ADF → ADLS → Databricks → Power BI)**

### Components:
- **Azure Data Factory (ADF):** Manages pipeline orchestration and scheduling.  
- **Azure Data Lake Storage (ADLS Gen2):** Serves as the central data lake for raw and processed data.  
- **Azure Databricks:** Handles scalable data transformation using PySpark.  
- **Power BI / Synapse:** Consumes the Gold-layer data for visualization and insights.

---

## 📁 Project Structure


## ⚙️ Pipeline Flow

### 1. Extraction (ADF)
- ADF pipelines copy raw CSV files from the AdventureWorks source into `ADLS/raw`.  
**(Insert ADF pipeline screenshot here)**  

### 2. Transformation (Databricks)
- Databricks notebooks perform cleaning, joins, and aggregations using PySpark.  
- Data moves through **Bronze → Silver → Gold** layers for reliability and reuse.  
**(Insert Databricks notebook or job screenshot here)**  

### 3. Loading & Visualization
- Final Gold tables are stored in `ADLS/gold`.  
- Data is visualized in Power BI or queried through Synapse Analytics.  
**(Insert Power BI dashboard or SQL output screenshot here)**  

---

## 📊 Example Output

Below is an example of the aggregated “Gold” dataset containing sales metrics and customer insights.

**(Insert table preview or screenshot here)**

---

## 🧪 Data Quality Checks

Implemented validation steps ensure data accuracy and consistency:
- Null and duplicate detection  
- Schema validation and type checking  
- Referential integrity between dimension and fact tables  
- Row count validation between stages  

**(Insert screenshot of validation logs or Great Expectations report here)**

---

## 🧰 Tech Stack

| Layer | Tool / Service | Purpose |
|-------|----------------|----------|
| **Orchestration** | Azure Data Factory | Pipeline scheduling & workflow management |
| **Storage** | Azure Data Lake Gen2 | Centralized storage (raw, silver, gold layers) |
| **Processing** | Azure Databricks (PySpark) | Data cleaning, transformation, aggregation |
| **Infrastructure** | Terraform / Azure CLI | Optional IaC for resource provisioning |
| **Visualization** | Power BI / Synapse Analytics | Data analysis & dashboarding |
| **Testing** | PyTest / Great Expectations | Unit testing & data validation |

## 📚 Reference

- [AdventureWorks Dataset on Kaggle](https://www.kaggle.com/datasets/ukveteran/adventure-works)
