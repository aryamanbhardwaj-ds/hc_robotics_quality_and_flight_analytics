SELECT COUNT(*) FROM manufacturing;
SELECT COUNT(*) FROM flight_performance;
SELECT COUNT(*) FROM supply_chain;

SELECT column_name
FROM information_schema.columns
WHERE table_name = 'manufacturing';

SELECT COUNT(*) FROM manufacturing;

SELECT 
    "Drone_Model",
    COUNT(*) AS total_units,
    SUM("Defect_Flag") AS defect_units,
    ROUND(100.0 * SUM("Defect_Flag") / COUNT(*), 2) AS defect_rate_pct
FROM manufacturing
GROUP BY "Drone_Model"
ORDER BY defect_rate_pct DESC;

SELECT
    "Supplier",
    COUNT(*) AS total_components,
    SUM("Defect_Flag") AS defect_units,
    ROUND(100.0 * SUM("Defect_Flag") / COUNT(*), 2) AS defect_rate_pct
FROM manufacturing
GROUP BY "Supplier"
ORDER BY defect_rate_pct DESC;

SELECT
    "Component_Type",
    COUNT(*) AS total_units,
    SUM("Defect_Flag") AS defect_units,
    ROUND(100.0 * SUM("Defect_Flag") / COUNT(*), 2) AS defect_rate_pct
FROM manufacturing
GROUP BY "Component_Type"
ORDER BY defect_rate_pct DESC;

SELECT
    "Drone_Model",
    SUM("Rework_Cost_INR") AS total_rework_cost
FROM manufacturing
GROUP BY "Drone_Model"
ORDER BY total_rework_cost DESC;

SELECT
    "Failure_Risk",
    COUNT(*) AS drone_count
FROM flight_performance
GROUP BY "Failure_Risk"
ORDER BY drone_count DESC;

SELECT
    "Failure_Risk",
    ROUND(AVG("Battery_Health_%")::numeric, 2) AS avg_battery_health,
    ROUND(AVG("Motor_Temperature_C")::numeric, 2) AS avg_motor_temp
FROM flight_performance
GROUP BY "Failure_Risk";

SELECT
    "Supplier",
    COUNT(*) AS high_risk_components
FROM supply_chain
WHERE "Stockout_Risk" = 'High'
GROUP BY "Supplier"
ORDER BY high_risk_components DESC;

SELECT
    "Drone_Model",
    COUNT(*) AS stockout_risk_count
FROM supply_chain
WHERE "Stockout_Risk" = 'High'
GROUP BY "Drone_Model"
ORDER BY stockout_risk_count DESC;






