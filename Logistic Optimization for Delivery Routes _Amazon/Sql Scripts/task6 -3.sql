SELECT
    Order_ID,
    COUNT(*) AS Delayed_Checkpoints
FROM shipment_tracking_table
WHERE Delay_Reason IS NOT NULL
GROUP BY Order_ID
HAVING COUNT(*) > 2;
