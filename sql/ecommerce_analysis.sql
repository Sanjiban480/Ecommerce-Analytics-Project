CREATE DATABASE ecommerce_analysis;
USE ecommerce_analysis;
SELECT*
FROM samplesuperstore
LIMIT 10;
SELECT
Category,
ROUND(SUM(Sales),2) AS Total_Sales
FROM samplesuperstore
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT
State,
ROUND(SUM(Sales),2) AS Total_Sales
FROM samplesuperstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
Category,
ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY Category
ORDER BY Total_Profit DESC;
USE ecommerce_analysis;
SELECT COUNT(*)
FROM samplesuperstore;
SELECT
Region,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT
`Sub-Category`,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit DESC;

SELECT
`Sub-Category`,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY `Sub-Category`
ORDER BY Total_Profit ASC
LIMIT 10;
SELECT 
	State,
	ROUND(SUM(Sales),2) AS Total_Sales,
	ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT 
	State,
	ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY State
ORDER BY Total_Profit DESC
LIMIT 10;

SELECT 
    ROUND(Discount,2) AS Discount_Rate,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY Discount
ORDER BY Discount; 

  SELECT 
	`Ship Mode`,
    ROUND(SUM(Profit),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC; 

SELECT 
	Segment,
    ROUND(SUM(Profit),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

 SELECT 
	Category,
    ROUND(AVG(Discount),2) AS Avg_Discount,
    ROUND(SUM(Sales),2) AS Total_Sales,
    ROUND(SUM(Profit),2) AS Total_Profit
FROM samplesuperstore
GROUP BY Category
ORDER BY Avg_Discount DESC; 



