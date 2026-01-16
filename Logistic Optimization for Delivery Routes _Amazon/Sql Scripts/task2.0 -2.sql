SELECT 
    Route_ID,
    AVG(DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date)) AS Avg_Delay_Days
FROM Orders
WHERE DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) > 0
GROUP BY Route_ID
ORDER BY Avg_Delay_Days DESC
LIMIT 10;
