SELECT 
    Route_ID,
    COUNT(*) AS Total_Orders,
    SUM(
        CASE 
            WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) > 0 
            THEN 1 ELSE 0 
        END
    ) AS Delayed_Orders,
    (SUM(
        CASE 
            WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) > 0 
            THEN 1 ELSE 0 
        END
    ) * 100.0 / COUNT(*)) AS Delay_Percentage
FROM Orders
GROUP BY Route_ID
HAVING Delay_Percentage > 20
order by Delay_Percentage ASC;