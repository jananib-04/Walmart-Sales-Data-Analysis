## 📊 Walmart Sales Analysis
### 📌 Overview

This project was built to practice and demonstrate end-to-end data analysis using real-world retail sales data.
The goal is to extract actionable business insights related to sales performance, customer behavior, and operational trends across Walmart branches and cities.

The analysis combines Python (EDA) and MySQL (analytical queries) to simulate a real analytics workflow.

### 📂 Project Components

- Data cleaning & exploratory analysis using Python
- Business-focused SQL queries
- A summarized business insights report

### 🧹 Data Preparation

Data cleaning and preprocessing were performed in **[eda.ipynb](eda.ipynb)**

Key steps included:
- Loading raw Walmart sales data using pandas
- Exploring dataset structure `shape`, `head()`, `info()`
- Removing duplicate records using `drop_duplicates()`
- Handling missing values using `dropna()` 
- Validating and preparing data types
- Loading cleaned data into MySQL using SQLAlchemy and PyMySQL

### 🎯 SQL Analysis

All SQL queries used in the analysis are provided in the **[Queries.sql](Queries.sql)**

Business questions addressed:

- Sales performance by payment method
- Top-selling category in each branch
- Busiest day of the week by branch
- Category-wise ratings across cities
- Total profit by product category
- Most frequently used payment method per branch
- Customer traffic by time of day
- Year-over-year revenue decline analysis (2022 vs 2023)


### 📄 Business Insights Report:

 **[Walmart Business Insights Report](Walmart%20Business%20Insights.pdf)**

### 🛠 Tools & Technologies

- MySQL
- Python (Pandas)
- Jupyter Notebook

### 📦 Environment Setup
Install Required Libraries
```bash
pip install pandas sqlalchemy pymysql
```
Or install all dependencies:
```bash
pip install -r requirements.txt
```
### 🚀 How to Use

1. Clone the repository
2. Explore data preparation in eda.ipynb
3. Load cleaned data into MySQL
4. Run SQL queries from Queries.sql
5. Review insights in the PDF report
