# Drone Manufacturing & Performance Analytics | HC Robotics

## 📌 Project Overview
This project establishes a comprehensive data pipeline for **HC Robotics** to monitor the lifecycle of autonomous drones. It integrates synthetic data generation, a PostgreSQL relational database, and a Power BI business intelligence layer to track manufacturing defects, flight reliability, and supply chain vulnerabilities.

## 🏗️ Technical Architecture

1.  **ETL & Generation (Python):** Scripted a data generation engine for 200+ unique drone units across three models (`HC-Scout`, `HC-Sentinel`, `HC-Ranger`).
2.  **Data Warehouse (PostgreSQL):** Engineered a relational schema across three core domains: Manufacturing, Flight Performance, and Supply Chain.
3.  **Analytics (SQL):** Developed complex queries to calculate defect rates per supplier and failure risk correlations.
4.  **BI Visualization (Power BI):** Designed a dynamic dashboard to track KPIs like *Rework Cost*, *Battery Health*, and *Stockout Risk*.

## 🛠️ Tech Stack
* **Language:** Python (Pandas, NumPy, SQLAlchemy)
* **Database:** PostgreSQL
* **Visualization:** Power BI
* **Domain:** Robotics / Industrial Analytics

## 📊 Key Insights & KPIs
* **Manufacturing Quality:** Identified defect rates by component type (e.g., Battery Overheating vs. GPS Signal Loss).
* **Flight Performance:** Classified "High Risk" drones based on the intersection of `Motor_Temperature_C` (>85°C) and `Battery_Health_%` (<70%).
* **Supply Chain:** Isolated high-lead-time suppliers (Supplier-B/D) to mitigate stockout risks for critical components.

## 🗄️ Database Schema
The system utilizes three primary tables:
* `manufacturing`: Tracks `Drone_ID`, `Component_Type`, `Supplier`, and `Rework_Cost_INR`.
* `flight_performance`: Monitors `Total_Flight_Hours`, `Battery_Health_%`, and `Failure_Risk`.
* `supply_chain`: Manages `Inventory_Level`, `Lead_Time_Days`, and `Stockout_Risk`.

## 🚀 How to Run
1.  **Database Setup:** Execute the script in `database/hc_robotics_sql.sql` in your PostgreSQL instance.
2.  **ETL Pipeline:** Run the Jupyter Notebook in `notebooks/` to populate the database (requires `psycopg2` and `sqlalchemy`).
3.  **View Dashboard:** Open `dashboard/hc_robotics_vision_system.pbix` in Power BI Desktop to view the interactive report.

---
**Note:** This project was developed as part of an internship at **HC Robotics**. All proprietary logic has been generalized for public demonstration.
