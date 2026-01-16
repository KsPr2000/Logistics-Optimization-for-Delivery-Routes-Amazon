select * from warehouses;
SELECT 
    Warehouse_ID,
    Location,
    Processing_Time_Min
FROM Warehouses
ORDER BY Processing_Time_Min DESC