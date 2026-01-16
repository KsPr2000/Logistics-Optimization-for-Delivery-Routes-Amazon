SELECT
    COUNT(*) AS Total_Deliveries,
    SUM(
        CASE
            WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) <= 0
            THEN 1 ELSE 0
        END
    ) AS On_Time_Deliveries,
    (SUM(
        CASE
            WHEN DATEDIFF(Actual_Delivery_Date, Expected_Delivery_Date) <= 0
            THEN 1 ELSE 0
        END
    ) * 100.0 / COUNT(*)) AS On_Time_Delivery_Percentage
FROM Orders;
