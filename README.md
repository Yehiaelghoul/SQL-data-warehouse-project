# 🏗️ Data Warehouse Project

## 📘 Overview
This project demonstrates a **modern Data Warehouse architecture** built using the **Medallion (Bronze–Silver–Gold)** design pattern.  
It aims to show a full **ETL pipeline** — from raw data ingestion to business-ready analytics — leveraging SQL-based processing and modular data transformation principles.

---

## 🧱 Architecture Layers

![Data Warehouse Architecture](./DW%20-%20Architecture%20Design.png)

### **1. Sources**
- **CRM** and **ERP** systems exporting data as `.csv` files.  
- Data is ingested from **file-based interfaces** (folders or shared drives).

### **2. Bronze Layer (Raw Data)**
- **Object Type:** Tables  
- **Load Type:** Batch Processing (Full Load - Truncate & Insert)  
- **Transformation:** None — data stored *as-is*.  
- **Purpose:** Preserve the original state of data for traceability and auditing.

### **3. Silver Layer (Cleansed / Standardized Data)**
- **Object Type:** Tables  
- **Load Type:** Batch Processing (Full Load - Truncate & Insert)  
- **Transformations:**
  - Data Cleansing  
  - Standardization  
  - Normalization  
  - Derived Columns  
  - Data Enrichment  
- **Purpose:** Provide consistent, quality-controlled data ready for modeling.

### **4. Gold Layer (Business-Ready Data)**
- **Object Type:** Tables  
- **Transformation:**
  - Data Integration  
  - Aggregations  
  - Business Logic  
- **Data Model:** 
  - Star Schema  
  - Flat Tables  
  - Aggregated Tables  
- **Purpose:** Support **Business Intelligence**, **Reporting**, and **Machine Learning** use cases.

---

## 📊 Consumption Layer
- **BI & Reporting Tools** (e.g., Power BI, Tableau)
- **Ad-hoc SQL Queries** for analysts  
- **Machine Learning Pipelines** consuming curated data

---

## 🛠️ Tech Stack
| Layer | Tools / Technologies |
|-------|----------------------|
| Data Storage | SQL Database |
| Data Ingestion | Batch Processing (CSV interface) |
| Transformation | SQL Scripts / ETL Framework |
| Visualization | Power BI (or any BI Tool) |
| Version Control | GitHub |
| License | MIT License |

---

## 🚀 Getting Started

### 1️⃣ Clone the Repository
```bash
git clone https://github.com/<your-username>/<your-repo-name>.git
cd <your-repo-name>
📁 src/
 ┣ 📂 ingestion/
 ┣ 📂 transformation/
 ┣ 📂 models/
 ┗ 📂 reports/

📁 docs/
 ┗ DW - Architecture Design.png

📁 data/
 ┣ 📂 raw/
 ┣ 📂 cleansed/
 ┗ 📂 gold/

3️⃣ How to Run

Place your .csv files from CRM/ERP into the data/raw/ folder.

Run SQL scripts from /src/transformation/ sequentially:

01_bronze_to_silver.sql

02_silver_to_gold.sql

Connect your BI tool to the Gold layer tables for analytics.

🧠 Key Learnings

Hands-on practice with Data Warehouse lifecycle

Applied Data Cleansing, Normalization, and Aggregation

Built Star Schema data model

Prepared data for BI dashboards and Machine Learning

📄 License

This project is licensed under the MIT License
 — feel free to use, modify, and share with attribution.

✨ Author

Yehia Ibrahim
📍 Cairo, Egypt
💼 Planning Engineer | Aspiring Data Analyst
📧 yehiaelghool20155@gmail.com
🌐 https://www.linkedin.com/in/yehia-elghoul-645941192/
