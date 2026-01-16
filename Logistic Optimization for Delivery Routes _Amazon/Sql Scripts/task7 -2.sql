SELECT
    r.Start_Location,
    AVG(DATEDIFF(o.Actual_Delivery_Date, o.Expected_Delivery_Date)) AS Avg_Delivery_Delay_Days
FROM Orders o
JOIN Routes r
    ON o.Route_ID = r.Route_ID
GROUP BY r.Start_Location;
