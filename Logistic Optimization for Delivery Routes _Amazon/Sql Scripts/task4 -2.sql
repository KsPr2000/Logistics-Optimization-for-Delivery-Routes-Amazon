SELECT 
    Warehouse_ID,
    COUNT(*) AS Total_Orders,
    SUM(
        CASE 
            WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) > 0 
            THEN 1 ELSE 0 
        END
    ) AS Delayed_Orders
FROM Orders
GROUP BY Warehouse_ID;
