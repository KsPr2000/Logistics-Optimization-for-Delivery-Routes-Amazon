SELECT 
    'Top 5 Agents' AS Agent_Group,
    AVG(Avg_Speed_KM_HR) AS Avg_Speed
FROM (
    SELECT Avg_Speed_KM_HR
    FROM deliveryagents
    ORDER BY On_Time_Percentage DESC
    LIMIT 5
) top_agents

UNION ALL

SELECT 
    'Bottom 5 Agents' AS Agent_Group,
    AVG(Avg_Speed_KM_HR) AS Avg_Speed
FROM (
    SELECT Avg_Speed_KM_HR
    FROM deliveryagents
    ORDER BY On_Time_Percentage ASC
    LIMIT 5
) bottom_agents;
