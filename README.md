# Real-time-System-Insights-Project
## Simulated Monitoring Analyst – Real-time System Insights Project

> A simulation-based project to mimic a real-time system monitoring analyst role using Python, SQL, and Power BI.

---

## 🔍 Project Overview

This project simulates how a Monitoring Analyst monitors system performance metrics like API error rates, latency, and transaction volumes. The goal is to practice building an anomaly detection and alerting system that would typically be used in real-time operational environments, such as in companies like Razorpay, Paytm, or fintech startups.

You will simulate logs, detect anomalies using SQL, load and analyze data in Power BI, and create stakeholder-ready dashboards with real-time-like KPIs and alerts.

---

## 🛠️ Tools & Technologies Used

- **Python (pandas, numpy)** – to simulate system log data  
- **PostgreSQL (SQL)** – for structured querying and trend analysis  
- **Power BI** – for visualization, KPI tracking, conditional formatting, and dashboard interactivity  
- **psycopg2** – for Python-to-PostgreSQL data loading  

---

## 🚀 Features

- ✅ Simulates API call logs with realistic fields:  
  - `timestamp`, `api_name`, `response_time`, `status_code`, `transactions_count`, `errors`  
- 📥 Stores logs in PostgreSQL using Python script  
- 🧠 SQL queries to detect:  
  - High latency  
  - Error spikes  
  - Rolling error count using window functions  
- 📊 Power BI Dashboard with:  
  - **KPI Cards**: Max Response Time, Total Errors, Total Transactions  
  - **Line Chart**: Response Time over time  
  - **Bar Chart**: Errors by API  
  - **Slicers**: Filter by API and timestamp range  
  - **Conditional formatting**: Highlight high-error APIs (e.g., red if errors > 5)  
- 🧾 Incident alert template simulates how a real monitoring analyst would communicate with stakeholders  

---

## 🔧 Setup Instructions

### 🔹 1. Simulate the Data
Open and run `notebooks/simulate_data.ipynb`  
This creates a realistic dataset: `data/api_monitoring_logs.csv`

---

### 🔹 2. Load Data into PostgreSQL
Edit `scripts/load_to_postgresql.py` with your DB credentials.  
Then run:

```bash
python scripts/load_to_postgresql.py
```
---
### 🔹 3. Run SQL Analysis
Use queries from sql/monitoring_queries.sql to:

Detect latency spikes

Monitor error volume over time

Use window functions for trend detection
---
### 🔹 4. Visualize in Power BI
Open powerbi/monitoring_dashboard.pbix in Power BI Desktop. Connect it to either:

api_monitoring_logs.csv (static source), or

Your PostgreSQL database (live/refreshable source)

Add slicers, filters, and alerts as needed.
Export to PDF or share via Power BI Service (optional).
---
### 📝 Sample Incident Alert Template
text
Copy
Edit
🚨 System Alert – High Error Rate Detected

Time: 2025-07-15 14:32  
API: /create_order  
Error Count: 7 in last 5 mins  
Response Time: Spike > 3000ms  
---

### Action Taken: Alert sent to incident response team.
📄 File: docs/incident_template.docx

💼 Use Case & Learning Outcomes
✅ Perfect for:

Aspiring Monitoring Analysts, SREs, Data Analysts

Practicing KPI-based system health tracking

Showcasing anomaly detection skills in dashboards

Strong GitHub portfolio and interview project

✅ You will learn to:

Simulate and structure system monitoring data

Use SQL to detect time-based anomalies

Visualize real-time metrics and alerts in Power BI

Communicate incidents clearly with stakeholders

📬 Contact
Author: Vikrant Aheibam
GitHub: github.com/VikrantAh12


