Logistics Optimization for Delivery Routes – Amazon  


Project Overview: 
Amazon, a global e-commerce leader, handles millions of daily shipments across various 
regions. The logistics network is vast, comprising warehouses, fulfillment centers, and last-mile 
delivery partners. With increasing order volumes, delays and inefficiencies in delivery routes can 
significantly affect customer satisfaction and operational costs. 


Currently, Amazon’s logistics team faces challenges in: 
● Identifying delays and their root causes (e.g., route congestion, warehouse delays). 
● Optimizing delivery routes for faster fulfillment. 
● Improving shipment efficiency through data-driven insights. 
The logistics data, stored in structured relational databases, can be analyzed using SQL to 
extract actionable insights that can improve route planning, minimize delivery delays, and 
enhance overall operational performance. 


Project Objective: 
Build a SQL-driven Logistics analytics system to analyze delays, optimize routes, and enhance 
shipment efficiency by leveraging queries, aggregations. The project aims to answer key 
business questions, uncover inefficiencies, and recommend actionable improvements based on 
data analysis. 

The dataset will include the following key tables: 

1.Orders Table 
2. Routes Table 
3. Warehouses Table 
4. Delivery Agents Table 
5. Shipment Tracking Table 
Tasks to be Performed 
 
Task 1: Data Cleaning & Preparation  
● Identify and delete duplicate Order_ID records. 
● Replace null Traffic_Delay_Min with the average delay for that route. 
● Convert all date columns into YYYY-MM-DD format using SQL functions. 
● Ensure that no Actual_Delivery_Date is before Order_Date (flag such records). 


Task 2: Delivery Delay Analysis 
● Calculate delivery delay (in days) for each order 
● Find Top 10 delayed routes based on average delay days. 
● Use window functions to rank all orders by delay within each warehouse. 


Task 3: Route Optimization Insights 


● For each route, calculate: 
○ Average delivery time (in days). 
○ Average traffic delay. 
○ Distance-to-time efficiency ratio: Distance_KM / Average_Travel_Time_Min. 
● Identify 3 routes with the worst efficiency ratio. 
● Find routes with >20% delayed shipments. 
● Recommend potential routes for optimization. 


Task 4: Warehouse Performance 
● Find the top 3 warehouses with the highest average processing time. 
● Calculate total vs. delayed shipments for each warehouse. 
● Use CTEs to find bottleneck warehouses where processing time > global average. 
● Rank warehouses based on on-time delivery percentage. 


Task 5: Delivery Agent Performance 
● Rank agents (per route) by on-time delivery percentage  
● Find agents with on-time % < 80%. 
● Compare average speed of top 5 vs bottom 5 agents using subqueries. 


Task 6: Shipment Tracking Analytics 
● For each order, list the last checkpoint and time. 
● Find the most common delay reasons (excluding None). 
● Identify orders with >2 delayed checkpoints  


Task 7: Advanced KPI Reporting 
Calculate KPIs using SQL queries: 
Average Delivery Delay per Region (Start_Location). 
On-Time Delivery % = (Total On-Time Deliveries / Total Deliveries) * 100. 
Average Traffic Delay per Route. 
