# Building a Data Mart Using SSIS | End-to-End ETL Project

## 📌 Project Summary
This project demonstrates the design and implementation of an end-to-end **ETL pipeline** to build a structured **Data Warehouse** using **SQL Server Integration Services (SSIS)**.

The solution transforms raw operational data into a dimensional model (Star Schema) optimized for analytical reporting and business intelligence.

This project highlights practical Data Engineering skills including:
- Data Warehousing concepts  
- ETL development using SSIS  
- Star Schema modeling  
- Data transformation & cleansing  
- Performance-oriented design  

---

#  Architecture Overview

## 🔄 ETL Pipeline (Extract – Transform – Load)

### 1️⃣ Extract
- Data is extracted from source systems (OLTP tables).
- Source data is moved into a staging layer.

### 2️⃣ Transform
- Data cleansing and validation
- Data type standardization
- Lookup transformations
- Handling nulls and inconsistencies
- Applying business rules

### 3️⃣ Load
- Loading dimension tables
- Loading fact tables
- Maintaining referential integrity

---

# Data Mart Design

## 📊 Dimensional Modeling (Star Schema)

The Data Mart is designed using a **Star Schema** to ensure:
- Fast analytical queries  
- Optimized reporting performance  
- Simplified BI integration  

### 📌 Fact Table
Stores measurable business metrics (e.g., sales amount, transaction quantity).

### 📌 Dimension Tables
Contain descriptive attributes such as:
- Customer  
- Product  
- Date  
- Location  

---

#  Technologies Used

- **SQL Server**
- **SQL Server Integration Services (SSIS)**
- **SQL Server Management Studio (SSMS)**
- **SQL Server Data Tools (SSDT / Visual Studio)**

---

#  Repository Structure

## 📁 DWH ETL
SSIS project files and ETL packages.

## 📁 DWH Scripts
SQL scripts for:
- Staging layer creation  
- Dimension tables  
- Fact tables  

## 📁 ScreenShots from ETL
Screenshots of:
- Control Flow  
- Data Flow  
- Package execution  

---

# ▶️ How to Run the Project

## Step 1: Clone the Repository
```bash
git clone https://github.com/RaniaHassan-11/Building-Data-mart-Using-SSIS-tool.git
```

## Step 2: Open the SSIS Project
Open using Visual Studio / SSDT.

## Step 3: Configure Connections
Update Connection Managers to match your SQL Server instance.

## Step 4: Execute ETL Packages
Run the packages to populate the Data Mart.

---

# 📈 Business Value

This project simulates a real-world Data Engineering workflow where:
- Raw operational data is transformed into analytical-ready structures.
- Reporting performance is improved using dimensional modeling.
- The Data Mart becomes ready for integration with BI tools such as Power BI.

---

#  Future Enhancements

- Implement Incremental Load strategy (Slowly Changing Dimensions)
- Add logging & error handling framework
- Automate scheduling using SQL Server Agent
- Integrate with Power BI Dashboard
- Optimize performance for large-scale datasets

---
