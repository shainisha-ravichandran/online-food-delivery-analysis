SELECT COUNT(*)
FROM cleaned_food_delivery_data;

SELECT Order_Status,
       COUNT(*) AS Total_Orders
FROM cleaned_food_delivery_data
GROUP BY Order_Status;

SELECT City,
       COUNT(*) AS Total_Orders
FROM cleaned_food_delivery_data
GROUP BY City
ORDER BY Total_Orders DESC
LIMIT 10;
SELECT Payment_Mode,
       COUNT(*) AS Total_Orders
FROM cleaned_food_delivery_data
GROUP BY Payment_Mode
ORDER BY Total_Orders DESC;
SELECT Cuisine_Type,
       COUNT(*) AS Total_Orders
FROM cleaned_food_delivery_data
GROUP BY Cuisine_Type
ORDER BY Total_Orders DESC;
SELECT Restaurant_Name,
       COUNT(*) AS Total_Orders
FROM cleaned_food_delivery_data
GROUP BY Restaurant_Name
ORDER BY Total_Orders DESC
LIMIT 10;
SELECT City,
       ROUND(AVG(Delivery_Time_Min),2) AS Avg_Delivery_Time
FROM cleaned_food_delivery_data
GROUP BY City
ORDER BY Avg_Delivery_Time DESC;
SELECT Customer_ID,
       SUM(Final_Amount) AS Total_Spent
FROM cleaned_food_delivery_data
GROUP BY Customer_ID
ORDER BY Total_Spent DESC
LIMIT 10;
SELECT MONTH(Order_Date) AS Month,
       ROUND(SUM(Final_Amount),2) AS Revenue
FROM cleaned_food_delivery_data
GROUP BY MONTH(Order_Date)
ORDER BY Month;
SELECT Cancellation_Reason,
       COUNT(*) AS Total
FROM cleaned_food_delivery_data
GROUP BY Cancellation_Reason
ORDER BY Total DESC;
SELECT Delivery_Rating,
       COUNT(*) AS Total
FROM cleaned_food_delivery_data
GROUP BY Delivery_Rating
ORDER BY Delivery_Rating;
SELECT ROUND(AVG(Profit_Margin),2) AS Average_Profit_Margin
FROM cleaned_food_delivery_data;
