WITH Avg_Processing AS (
    SELECT AVG(Processing_Time_Min) AS Avg_Time
    FROM Warehouses
)
SELECT 
    w.Warehouse_ID,
    w.Location,
    w.Processing_Time_Min
FROM Warehouses w
JOIN Avg_Processing a
ON w.Processing_Time_Min > a.Avg_Time;
