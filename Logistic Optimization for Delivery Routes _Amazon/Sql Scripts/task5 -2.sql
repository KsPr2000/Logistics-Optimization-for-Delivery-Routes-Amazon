SELECT
    Agent_ID,
    Route_ID,
    On_Time_Percentage
FROM DeliveryAgents
WHERE On_Time_Percentage < 80;
