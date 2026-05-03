# End-to-End Inventory Analysis (SQL + MySQL + Power BI)

## 📌 Project Overview
This project demonstrates an end-to-end data analysis workflow where inventory data is processed, transformed, and visualized to generate business insights.

It includes:
- Data extraction and transformation using SQL
- Migration from SQL Server to MySQL
- Data modeling and visualization using Power BI

---

## ⚙️ Tech Stack
- SQL Server
- MySQL
- Power BI
- Power Query (M Language)
- DAX

---

## 🔄 Use Cases

### 1. Development to Production Workflow
- Built initial dataset and queries in SQL Server (test environment)
- Loaded data into Power BI for analysis
- Applied transformations and created dashboards
- Switched to production dataset with minimal changes
- Updated source settings in Power BI

### 2. Database Migration (SQL Server → MySQL)
- Migrated dataset to MySQL
- Recreated schema and transformations
- Connected Power BI to MySQL
- Ensured reports and calculations remained consistent

---

## 📊 Dashboard Preview

### 🔹 Supply & Demand Overview
![Supply Demand](assets/images/demand_supply_overview.png)

### 🔹 Financial Overview
![Financial](assets/images/profit_loss_overview.png)

---

## 📂 Project Structure
.
├── assets/
│ ├── backgrounds/
│ └── images/
├── data/
├── dax/
├── powerbi/
├── sql/
└── README.md


---

## 📈 Key Metrics
- Average Demand per Day
- Average Availability per Day
- Total Supply Shortage
- Total Profit
- Total Loss
- Average Daily Loss

---

## 🧠 Key Learnings
- End-to-end data pipeline design
- Handling multiple data sources
- Database migration strategies
- Power BI data modeling and DAX optimization

---

## 📌 Future Improvements
- Add real-time data refresh
- Optimize query performance
- Deploy dashboard to cloud environment
