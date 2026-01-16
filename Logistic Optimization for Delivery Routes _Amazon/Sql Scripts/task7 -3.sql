SELECT
    Route_ID,
    AVG(Traffic_Delay_Min) AS Avg_Traffic_Delay_Min
FROM Routes
GROUP BY Route_ID;
