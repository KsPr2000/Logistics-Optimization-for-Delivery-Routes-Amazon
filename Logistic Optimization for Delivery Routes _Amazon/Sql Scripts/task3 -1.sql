select * from routes;
select * from orders;
SELECT 
    Route_ID,
    AVG(DATEDIFF(Actual_Delivery_Date, Order_Date)) AS Avg_Delivery_Time_Days
FROM Orders
GROUP BY Route_ID;
