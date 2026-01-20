# Bank Customer Transaction Analysis Dashboard

## Project Overview
This project focuses on analyzing bank customer transaction data using **Excel**, **PostgreSQL** and **Power BI**.  
The goal is to clean transactional data, create meaningful KPIs, and build a professional interactive dashboard.

---

## Dataset
- Source: Kaggle
- Name: Bank Transaction Dataset
- Format: CSV

**Data:**
-[Dataset](data/bank_transaction_data.csv)

---

## Tools & Technologies
- Excel (Data cleaning, Pivot Tables)
- PostgreSQL (Data analysis using SQL)
- Power BI (Interactive dashboard)


---

## 🛠️ Data Cleaning (Excel)
The following data cleaning steps were performed:
1. Removed blank and invalid rows
2. Fixed date formats
3. Converted transaction amount to numeric
4. Removed duplicate transaction IDs

**Cleaned File:**  
- [bank_transaction_cleaned.xlsx](excel/cleaned_transaction_data.xlsx)


---


## Key SQL Analysis
- Total Transaction Amount
- monthly transaction Trend
- High value Customers
- Transaction by Age Group
- Transaction Count by Transaction Type
- Average Transaction Amount per Customer
- Age wise Transactional Analysis
- Identify customers with more than 10 transactions
- Rank customers based on total transaction amount


 **SQL Queries:**  
- [View SQL Analysis](sql/bank_transcation_queries.sql)

---

##  Power BI Data Modeling
- Imported PostgreSQL data into Power BI
- Ensured correct data types
- Prepared data for dashboard reporting

---
##  Power BI Dashboard
An interactive Power BI dashboard was created to visualize key business metrics and insights.

**Power BI File:**  
- [Download Power BI Dashboard](powerbi/bank_customer_transaction_performance_dashboard.pbix)


---

## DAX Measures Created
The following key measures were created using DAX:
- **Total Transaction Amount**
- **Total Transactions**
- **Average Transaction Value**
- **Total Customers**


---

## Dashboard Visuals
The Power BI dashboard includes:
1. KPI Cards (Total Transaction, Total Transaction Amount, Avg Transaction Value, Total Customers)
2. Line Chart – Monthly Transaction Trend
3. Column Chart – Total Transaction by Channel
4. Bar Chart – Transactions by Age Group
5. Map – Transactions by Location
6. Bar Chart – Top 10 Customers by Transaction Amount

---


##  Dashboard Screenshot
(screenshots/dashboard_overview.png)

---


## Key Insights
- The dashboard analyzes around 3K transactions from 495 customers, generating a total transaction value of $747.56K with an average transaction value of $297.59.

- The 19–30 age group customers records the highest transaction activity.

- ATM is the most used transaction channel, with Branch and Online channels showing 
comparable performance.

- A few top customers contribute most of the total transaction amount.

- Monthly trends indicate higher transaction activity toward the last 5 months of the year.

---

## Conclusion
This project shows the complete data analysis process, from cleaning data in Excel to writing SQL queries and building dashboards in Power BI. It helps understand customer behavior, identify high-value customers, analyze transactions by age group, track monthly trends, and visualize location-based performance. This project demonstrates the ability to turn raw data into clear and useful business insights for banking scenarios.


---

##  Project Structure
```

Bank_Customer_Transaction_Analysis/
│
├── data
│   └── bank_transaction_data.csv
│
├── excel
│   └── cleaned_transaction_data.xlsx
│
├── sql
│   └── bank_transaction_queries.sql
│
├── powerbi
│   └── bank_customer_transaction_performance_dashboard.pbix
│
├── screenshots
│   └── dashboard_overview.png
│
└── README.md
```


