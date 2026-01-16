SELECT 
    actual_delivery_date,
    expected_delivery_date,
    TIMESTAMPDIFF(DAY,
        expected_delivery_date,
        actual_delivery_date) AS delay_days,
    CASE
        WHEN
            TIMESTAMPDIFF(DAY,
                expected_delivery_date,
                actual_delivery_date) = 0
        THEN
            'On Time'
        WHEN
            TIMESTAMPDIFF(DAY,
                expected_delivery_date,
                actual_delivery_date) > 0
        THEN
            CONCAT('Delayed by ',
                    TIMESTAMPDIFF(DAY,
                        expected_delivery_date,
                        actual_delivery_date),
                    ' days')
        WHEN
            TIMESTAMPDIFF(DAY,
                expected_delivery_date,
                actual_delivery_date) < 0
        THEN
            CONCAT('Early by ',
                    ABS(TIMESTAMPDIFF(DAY,
                                expected_delivery_date,
                                actual_delivery_date)),
                    ' days')
    END AS delivery_status
FROM
    orders;

