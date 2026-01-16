SELECT 
    AVG(TIMESTAMPDIFF(DAY,
        expected_delivery_date,
        actual_delivery_date)) AS avg_delay_days
FROM
    orders
    where TIMESTAMPDIFF(DAY,
        expected_delivery_date,
        actual_delivery_date) >0
group by Route_ID
order by avg_delay_days desc
limit 10;