# 🛒: Retail Sales Data Analysis (SQL)
A SQL-based data analysis project on retail transactions to uncover product and customer insights.

---

## 📊 Overview:
This project analyzes a retail sales dataset using SQL to extract insights about customer behavior, product performance, and revenue trends. The dataset includes transactions from a single year (2023) and contains 1,000 rows of customer purchases.
The goal of this project is to demonstrate SQL querying skills by answering key business questions relevant to retail companies and generating insights that can support marketing and inventory decisions.

---

## 🧾 Dataset Description:
| Column Name       | Description                            |
| ----------------- | -------------------------------------- |
| Transaction\_ID   | Unique identifier for each transaction |
| Date              | Date of transaction                    |
| Customer\_ID      | Unique customer ID                     |
| Gender            | Customer gender                        |
| Age               | Customer age                           |
| Product\_Category | Category of the purchased item         |
| Quantity          | Quantity purchased                     |
| Price\_per\_Unit  | Price of one unit of the product       |
| Total\_Amount     | Total price paid (`Quantity * Price`)  |

---

## ❓ Business Questions Answered:
1. What is the total revenue for the business?\
   &rarr;*$456,000*
2. Which product categories generated the highest revenue?\
   &rarr;*Electronics ($156,905), Clothing ($155,580), Beauty ($143,515)*
3. What is the average transaction amount by customer gender?\
   &rarr;*Female: $456 | Male: $455*
4. Which age group spends the most per transaction on average?\
   &rarr;*10s ($621), 30s ($504), 20s ($464), 50+ ($426), 40s ($420)*
5. What are the most purchased product categories by transaction count?\
   &rarr;*Clothing (351), Electronics (342), Beauty (307)*
6. How does monthly revenue trend over time?\
   &rarr;*Best Month: May ($53,150), Worst: September ($23,620)*\
   &rarr;*Winter months outperformed summer months.*

---

## 💡 Key Insights:
* **Teen Customers (10s)** had the highest average spend per transaction, followed by customers in their 30s.
* **Clothing** was the most frequently purchased category, but **Electronics** generated the highest total revenue.
* The **holiday and winter months** showed stronger sales compared to the summer, suggesting seasonality in demand.

---

## 🛠️ Tools Used:
* **SQL Server Management Studio (SSMS)**
* **T-SQL** (for writing queries)
* **Power BI**
* **DAX**

---

## 📁 File Structure:
* retail_sales_analysis - All SQL queries used in the project.
* retail_sales_dataset - CSV file containing all data.
* retail_sales_analysis_dashboard - Dashboard containing project visualizations made in Power BI.
* README.md - Project documentation (this file).
