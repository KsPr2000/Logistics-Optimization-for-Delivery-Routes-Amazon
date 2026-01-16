SELECT
    Delay_Reason,
    COUNT(*) AS Occurrences
FROM shipment_tracking_table
WHERE Delay_Reason IS NOT NULL
GROUP BY Delay_Reason
ORDER BY Occurrences DESC;
