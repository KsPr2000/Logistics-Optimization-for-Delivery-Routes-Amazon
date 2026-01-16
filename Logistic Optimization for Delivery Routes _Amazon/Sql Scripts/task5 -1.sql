select * from deliveryagents;
SELECT
    da.Agent_ID,
    da.Route_ID,
    da.On_Time_Percentage,
    RANK() OVER (
        PARTITION BY da.Route_ID
        ORDER BY da.On_Time_Percentage DESC
    ) AS Agent_Rank
FROM DeliveryAgents da;
