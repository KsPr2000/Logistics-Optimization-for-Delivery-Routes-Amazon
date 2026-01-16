
SELECT 
    Route_ID,
    Distance_KM,
    Average_Travel_Time_Min,
    ROUND(Distance_KM / Average_Travel_Time_Min,2) AS Efficiency_Ratio
FROM Routes
ORDER BY Efficiency_Ratio ASC
limit 3;

