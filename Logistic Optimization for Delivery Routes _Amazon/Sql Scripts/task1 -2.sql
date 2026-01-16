SELECT COUNT(*) AS null_count
FROM Routes
WHERE Traffic_Delay_Min IS NULL;
