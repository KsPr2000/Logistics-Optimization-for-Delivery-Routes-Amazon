SELECT 
    Warehouse_ID,
    COUNT(*) AS Total_Orders,
    SUM(
        CASE 
            WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) <= 0
            THEN 1 ELSE 0 
        END
    ) AS On_Time_Orders,
    (SUM(
        CASE 
            WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) <= 0
            THEN 1 ELSE 0 
        END
    ) * 100.0 / COUNT(*)) AS On_Time_Percentage,
    RANK() OVER (
        ORDER BY 
        (SUM(
            CASE 
                WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) <= 0
                THEN 1 ELSE 0 
            END
        ) * 100.0 / COUNT(*)) DESC
    ) AS Warehouse_Rank
FROM Orders
GROUP BY Warehouse_ID;
