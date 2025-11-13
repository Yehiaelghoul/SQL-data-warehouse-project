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

### 3️⃣ How to Run

1. Place your `.csv` files from **CRM** and **ERP** into the `data/raw/` folder.  
2. Run SQL scripts from `/src/transformation/` sequentially:
   - `01_bronze_to_silver.sql`
   - `02_silver_to_gold.sql`
3. Connect your BI tool (e.g., Power BI) to the **Gold Layer** tables for analytics.

---

## 🧠 Key Learnings

- Hands-on practice with the **Data Warehouse lifecycle**
- Applied **Data Cleansing**, **Normalization**, and **Aggregation**
- Designed a **Star Schema** data model
- Prepared data for **BI Dashboards** and **Machine Learning**

---

## 📄 License

This project is licensed under the **MIT License**.  
You may freely use, modify, and distribute this project with attribution.  
For full details, see the [LICENSE](./LICENSE) file.

---

## ✨ Author

**Yehia Ibrahim**  
📍 *Cairo, Egypt*  
💼 Aspiring Data Analyst
📧 yehaielghool20155@gmail.com 
🌐 https://www.linkedin.com/in/yehia-elghoul-645941192/

---

### ⭐ If you found this project helpful, consider giving it a star!
