SET sql_safe_updates = 0;
UPDATE Orders
SET Order_Date = DATE(Order_Date),
    Expected_Delivery_Date = DATE(Expected_Delivery_Date),
    Actual_Delivery_Date = DATE(Actual_Delivery_Date);
