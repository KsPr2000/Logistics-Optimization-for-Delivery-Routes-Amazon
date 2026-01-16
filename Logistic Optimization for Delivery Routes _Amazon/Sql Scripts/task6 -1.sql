SELECT
    Order_ID,
    Checkpoint,
    Checkpoint_Time
FROM (
    SELECT
        Order_ID,
        Checkpoint,
        Checkpoint_Time,
        ROW_NUMBER() OVER (
            PARTITION BY Order_ID
            ORDER BY Checkpoint_Time DESC
        ) AS rn
    FROM shipment_tracking_table
) t
WHERE rn = 1;
