SET SQL_SAFE_UPDATES = 0;

UPDATE Orders
SET Order_Date = DATE_FORMAT(Order_Date, '%Y-%m-%d'),
    Actual_Delivery_Date = DATE_FORMAT(Actual_Delivery_Date, '%Y-%m-%d'),
    Expected_Delivery_Date = date_format(Expected_Delivery_Date ,'%Y-%m-%d' );
