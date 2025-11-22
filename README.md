# 🏗️ Modern Data Warehouse Project  
**End-to-End Medallion Architecture (Bronze → Silver → Gold)**  

This project demonstrates a complete, production-style **Data Warehouse lifecycle**, including ingestion, cleansing, transformation, dimensional modeling, and analytics consumption.  
It follows the **Medallion Architecture** design pattern widely used in modern data engineering.

---

# 📐 High-Level Architecture

<img width="1059" height="741" alt="DW - Architecture Design" src="https://github.com/user-attachments/assets/56463286-f971-4494-918a-83ae391e35f9" />

The diagram above illustrates the full data flow from **raw CSV sources** to **business-ready analytical models**.

---

# 🧱 Architecture Explanation

## 🔶 1️⃣ **Source Systems**
Operational source systems exporting `.csv` datasets:

- **CRM System:** Customer interactions, leads, sales activities  
- **ERP System:** Products, orders, transactions, operations  

📂 *Data is delivered into file-based interfaces (local folders or shared network drives).*

---

## 🟫 2️⃣ **Bronze Layer – Raw Data**
A landing zone storing **exact copies** of incoming source data.

### ✔ Purpose
- Preserve raw, untouched data for audit and traceability  
- Allow full historical reprocessing  
- Ensure ingestion reliability

### ✔ Technical Characteristics
- **Load Type:** Batch — Full Load (TRUNCATE + INSERT)  
- **Transformations:** None (as-is)  
- **Model:** Non-structured, same structure as source  

---

## 🪙 3️⃣ **Silver Layer – Cleansed & Standardized Data**
This layer applies the main ETL work to fix, clean, and standardize data.

### ✔ Transformations Applied
- Data Cleansing (nulls, formats, types)  
- Standardization  
- Normalization  
- Derived fields  
- Data Enrichment  

### ✔ Purpose
Provide **high-quality, consistent datasets** ready for analytical modeling.

---

## 🟧 4️⃣ **Gold Layer – Business-Ready Data**
The final curated layer supporting analytics, dashboards, and ML.

### ✔ Core Transformations
- Business Logic implementation  
- Aggregations  
- Data Integration (joining CRM + ERP)  

### ✔ Data Modeling
- **Star Schema**  
- **Fact & Dimension Tables**  
- **Aggregated Reporting Tables**  
- **Flat analytics tables**  

### ✔ Purpose
Deliver **fast, business-friendly datasets** for BI and decision-making.

---

# 📊 Consumption Layer
The output layer for end users and analytical systems:

- **Power BI** dashboards & KPI reporting  
- **Ad-Hoc SQL Analysis**  
- **Machine Learning pipelines** fed from Gold data  

---

# 🛠️ Tech Stack

| Layer | Tools |
|------|-------|
| Storage | SQL Database |
| Ingestion | Batch Processing (CSV → SQL) |
| Transformation | SQL ETL Scripts |
| Modeling | Star Schema / Dimensional Modeling |
| Visualization | Power BI |
| Version Control | GitHub |
| Execution | Manual / Scripted ETL |

---

# 🚀 Project Structure


├─ ingestion/
├─ transformation/
├─ models/
└─ reports/

docs/
└─ DW - Architecture Design.png

data/
├─ raw/
├─ cleansed/
└─ gold/

---

# ▶️ 3. How to Run

1. Place incoming `.csv` source files (CRM, ERP) in:  
   `data/raw/`
2. Run transformation SQL scripts in this order:
   - `01_bronze_to_silver.sql`
   - `02_silver_to_gold.sql`
3. Connect your BI tool (Power BI / Tableau) to the **Gold Layer** tables.

---

# 🧠 Key Learnings & Outcomes

- Built a full **Medallion Architecture** DWH from scratch  
- Applied **Data Cleaning, Standardization, & Enrichment**  
- Designed a **Star Schema** for the Gold Layer  
- Enabled **BI reporting** on clean business-ready data  
- Hands-on experience in SQL-based ETL workflows  

---

# 📄 License
This project is published under the **MIT License**.  
For details, see the included [LICENSE](./LICENSE) file.

---

# ✨ Author  
**Yehia Ibrahim**  
📍 Cairo, Egypt  
💼 Aspiring Data Analyst  
📧 yehaielghool20155@gmail.com  
🔗 https://www.linkedin.com/in/yehia-elghoul-645941192/

---

### ⭐ If you found this project helpful, consider giving it a star!
