
# 🏗️ Data Engineering - AdventureWorks data ETL Project

This repository showcases an **end-to-end data engineering pipeline** built using the **Azure ecosystem**, featuring **Azure Data Factory (ADF)**, **Azure Data Lake Storage (ADLS Gen2)**, and **Azure Databricks (PySpark)**.  

The project demonstrates how to extract, transform, and load data from the **AdventureWorks** sample dataset into a structured **Bronze–Silver–Gold** architecture for analytics and reporting.

---

## 🧩 Architecture Overview

Below is the high-level architecture and data flow across Azure services:

<img width="1970" height="1092" alt="image" src="https://github.com/user-attachments/assets/6d78f40e-a29d-4ca5-b487-b30c77929a3c" />


### Components:
- **Azure Data Factory (ADF):** Manages pipeline orchestration and scheduling.  
- **Azure Data Lake Storage (ADLS Gen2):** Serves as the central data lake for raw and processed data.  
- **Azure Databricks:** Handles scalable data transformation using PySpark.  
- **Power BI / Synapse:** Consumes the Gold-layer data for visualization and insights.

---

## 📁 Project Structure


## ⚙️ Pipeline Flow

### 1. Extraction (ADF)
- The Azure Data Factory pipeline automates data ingestion from the AdventureWorks source into the raw layer of Azure Data Lake. The process uses a Lookup activity to retrieve a list of source files, followed by a ForEach loop that dynamically copies each CSV file into the designated raw container in ADLS.
<img width="2500" height="1258" alt="image" src="https://github.com/user-attachments/assets/b0b4dc39-6c46-4917-beda-07885dafa089" />
 
### 2. Transformation (Databricks)
- Databricks notebooks perform cleaning, joins, and aggregations using PySpark.  
- Data moves through **Bronze → Silver → Gold** layers for reliability and reuse.  
<img width="2404" height="1134" alt="image" src="https://github.com/user-attachments/assets/2d96591e-5206-45b0-870b-c665c0a48834" />

### 3. Loading & Visualization
- The final Gold-layer tables are stored in ADLS/gold, making them ready for reporting and analytics.
- A Power BI dashboard prototype was created to demonstrate a successful connection between the ETL pipeline and the analytics layer. This visualization serves as a proof of concept showing that transformed data can be accessed and explored by analysts, rather than a deep analytical report.
<img width="1830" height="1020" alt="image" src="https://github.com/user-attachments/assets/411f9bae-2393-48cd-ab35-5189158a9835" />

---

## 📊 Example Output

The screenshot below shows the **Gold layer** in Azure Data Lake, where the final aggregated tables are stored as Parquet files.  
This confirms that the ETL pipeline successfully processed and loaded clean, analytics-ready data into the `gold` container.

<img width="3072" height="804" alt="image" src="https://github.com/user-attachments/assets/e9ea495a-8f67-4172-b5d0-ab213e8672c9" />


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
