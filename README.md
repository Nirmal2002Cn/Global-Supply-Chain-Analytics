# 🌍 Global Supply Chain Analytics Dashboard

### Executive Summary
This end-to-end Business Intelligence project analyzes global supply chain logistics data to identify shipping inefficiencies, cost drivers, and vendor performance. The dashboard serves as a "Control Tower" for supply chain managers, providing real-time visibility into shipment reliability, costs, and manufacturing hubs.

![Dashboard Preview](Global_Supplychain_Dashboard.png)

### 📂 Repository Structure
* **`Supply Chain & Shipment Pricing.pbix`**: The main Power BI file containing the dashboard, data model, and DAX measures.
* **`Data_Cleaning.sql`**: SQL scripts used for data logic validation and exploratory analysis.
* **`Final_Cleaned_Supply_Chain.csv`**: The transformed dataset used for this analysis.
* **`Global_Supplychain_Dashboard.png`**: High-resolution preview of the final dashboard.

### 🛠️ Technical Stack
* **Power BI:**
    * **DAX:** Advanced measures for "On-Time Delivery %", "Avg Shipment Cost", and dynamic aggregations.
    * **UI/UX:** Designed a custom "Dark Mode" interface with Glassmorphism effects and custom navigation.
    * **Power Query:** ETL processes to clean raw log data and standardize formats.
    * **Visuals:** Azure Maps, KPI Cards, and Composite Models.
* **SQL:**
    * Used for data validation and aggregation logic (Group By, Window Functions).
* **Excel:** Initial data exploration.

### 💡 Key Business Insights
1.  **Reliability Issues:** while the overall On-Time Delivery Rate is **88%**, specific vendors and routes account for a disproportionate number of late shipments (12%).
2.  **Cost Drivers:** **Air Freight** is the most expensive shipping mode per unit, despite having lower overall volume compared to trucking.
3.  **Vendor Concentration:** Top 5 Manufacturing Sites (led by Aurobindo) manage over 50% of the shipment volume, presenting a potential supply chain risk if a single site faces disruption.
4.  **Geographic Hubs:** Visualized key manufacturing clusters across **India** and **Africa** using Azure Maps.

### 🚀 How to Run
1.  Download the `Supply Chain & Shipment Pricing.pbix` file.
2.  Open it in **Power BI Desktop**.
3.  (Optional) View the `Data_Cleaning.sql` file to see the logic behind the metrics.

---
*Created by Chamila Nirma; - Open for Data Analytics & BI Internships*
