CREATE DATABASE Sales_Analysis;

USE Sales_Analysis;
GO

CREATE TABLE Sales_Perforamnce_Dataset (
    Region VARCHAR(20),
    Salesperson VARCHAR(50),
    Revenue DECIMAL(12,2),
    Profit DECIMAL(12,2),
    Units_Sold INT,
    Customer_Satisfaction DECIMAL(3,2),
    Marketing_Spend DECIMAL(10,2),
    Discount_Percentage DECIMAL(5,2),
    Product_Category VARCHAR(50),
    Sales_Channel VARCHAR(20),
    Order_Processing_Time DECIMAL(5,2)
);
GO


SELECT COUNT(*) AS Total_Records
FROM dbo.Sales_Performance_Dataset


SELECT TOP 10 *
FROM dbo.Sales_Performance_Dataset

 EXEC sp_help 'dbo.Sales_Performance_Dataset'

 SELECT 
    SUM(Revenue) AS Total_Revenue
FROM dbo.Sales_Performance_Dataset;

SELECT 
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Performance_Dataset;

SELECT 
    Region,
    SUM(Revenue) AS Total_Revenue
FROM dbo.Sales_Performance_Dataset
GROUP BY Region
ORDER BY Total_Revenue DESC;

SELECT 
    Region,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Performance_Dataset
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT TOP 5
    Salesperson,
    SUM(Revenue) AS Total_Revenue
FROM dbo.Sales_Performance_Dataset
GROUP BY Salesperson
ORDER BY Total_Revenue DESC;

SELECT 
    Product_Category,
    SUM(Revenue) AS Total_Revenue
FROM dbo.Sales_Performance_Dataset
GROUP BY Product_Category
ORDER BY Total_Revenue DESC;

SELECT 
    AVG(Customer_Satisfaction) AS Avg_Satisfaction
FROM dbo.Sales_Performance_Dataset;

SELECT 
    Sales_Channel,
    SUM(Revenue) AS Total_Revenue
FROM dbo.Sales_Performance_Dataset
GROUP BY Sales_Channel
ORDER BY Total_Revenue DESC;

SELECT
    AVG(Discount_Percentage) AS Avg_Discount,
    AVG(Marketing_Spend) AS Avg_Marketing_Spend,
    AVG(Order_Processing_Time) AS Avg_Order_Processing_Time
FROM dbo.Sales_Performance_Dataset;

SELECT TOP 1
    Region,
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM dbo.Sales_Performance_Dataset
GROUP BY Region
ORDER BY Total_Revenue DESC;