CREATE DATABASE ecommerce;
USE ecommerce;
SELECT * FROM superstore LIMIT 5;
SELECT * FROM superstore LIMIT 1;
SELECT COUNT(*) AS Total_Orders
FROM superstore;
SELECT SUM(Sales) AS Total_Sales
FROM superstore;
SELECT AVG(Profit) AS Average_Profit
FROM superstore;
SELECT Region,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT `Customer Name`,
SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT Category,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category;
SELECT `Product Name`,
SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Profit ASC
LIMIT 10;
SELECT Region,
COUNT(*) AS Total_Orders
FROM superstore
GROUP BY Region;SELECT MONTH(`Order Date`) AS Month,
SUM(Sales) AS Monthly_Sales
FROM superstore
GROUP BY Month
ORDER BY Month;