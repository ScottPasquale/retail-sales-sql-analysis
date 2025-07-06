SELECT TOP (10) [Transaction_ID]
      ,[Date]
      ,[Customer_ID]
      ,[Gender]
      ,[Age]
      ,[Product_Category]
      ,[Quantity]
      ,[Price_per_Unit]
      ,[Total_Amount]
  FROM [Retail_Sales_DB].[dbo].[retail_sales_dataset];

-- Question 1:
-- What is the total revenue for the business?

SELECT
    SUM(Total_Amount) AS Revenue
FROM retail_sales_dataset;

-- Answer: $456,000

-- Question 2:
-- Which product categories generated the highest revenue?

SELECT
    Product_Category,
    SUM(Total_Amount) AS Revenue
FROM retail_sales_dataset
GROUP BY Product_Category
ORDER BY Revenue DESC;

-- Electronics: $156,905
-- Clothing $155,580
-- Beauty $143,515

-- Question 3:
-- What is the average transaction amount by customer gender?

SELECT
    Gender,
    AVG(Total_Amount) AS Avg_Transaction_Amount
FROM retail_sales_dataset
GROUP BY Gender
ORDER BY Avg_Transaction_Amount DESC;

-- Female: $456
-- Male: $455

-- Question 4:
-- Which age group spends the most on average transaction?

SELECT
    Age_Group,
    AVG(Total_Amount) AS Avg_Transaction_Amount
FROM (
    SELECT *,
        CASE
            WHEN Age BETWEEN 10 AND 19 THEN '10s'
            WHEN Age BETWEEN 20 AND 29 THEN '20s'
            WHEN Age BETWEEN 30 AND 39 THEN '30s'
            WHEN Age BETWEEN 40 AND 49 THEN '40s'
            WHEN Age >=50 THEN '50+'
        END AS Age_Group
    FROM retail_sales_dataset
    ) AS Age_Group_Table
GROUP BY Age_Group
ORDER BY Age_Group;

-- 10s: $621
-- 20s: $464
-- 30s: $504
-- 40s: $420
-- 50s: $426

-- Question 5:
-- What are the most purchased product categories?

SELECT
    Product_Category,
    COUNT(*) AS NumTransactions
FROM retail_sales_dataset
GROUP BY Product_Category
ORDER BY NumTransactions DESC;

-- Clothing: 351
-- Electronics: 342
-- Beauty: 307

-- Question 6:
-- How does monthly revenue trend over time?

SELECT
    FORMAT(Date, 'yyyy-MM') AS 'Month',
    SUM(Total_Amount) AS MonthlyRevenue
FROM retail_sales_dataset
GROUP BY FORMAT(Date, 'yyyy-MM')
ORDER BY FORMAT(Date, 'yyyy-MM');

-- Best Month: May - $53,150
-- Worst Month: September - $23,620
-- Winter months tend to do better than Summer Months based on this 2023 dataset.