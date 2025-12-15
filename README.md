## 📊Walmart Sales Analysis
### Overview

This project analyzes Walmart sales data to identify key business insights using MySQL and Python. The analysis focuses on sales performance, customer behavior, profitability, and operational patterns across different branches and cities.

The project contains:
- Data cleaning and exploration (Python)
- SQL-based analytical queries
- A business insights report summarizing findings

### 🧹 Data Preparation  
 Data cleaning and preprocessing were performed in the **[eda.ipynb](eda.ipynb)** notebook.  
**Key steps included:**

- Loading the raw Walmart sales CSV using pandas
- Inspecting dataset structure `shape`, `head()`, `info()`
- Removing duplicate records using `drop_duplicates()`  
- Handling missing values using `dropna()`  
- Validating column data types before loading into MySQL  
- Connecting to MySQL using SQLAlchemy + PyMySQL  

### 🎯SQL Analysis

All SQL queries used in the analysis are provided in the [Queries.sql](Queries.sql) 

**The analytical objectives include:**

- Sales performance by payment method
- Top-selling category in each branch
- Busiest day of the week by branch
- Category ratings by city
- Total profit by product category
- Most frequently used payment method per branch
- Customer traffic analysis by time of day
- Revenue decline analysis (2022 vs. 2023)


📄 **Business Insights Report:**  
[Walmart Business Insights Report](Walmart%20Business%20Insights.pdf)


### 🛠️Tools and Technologies

- MySQL
- Python (Pandas)
- Jupyter Notebook


### 🛠 Environment Setup

📦Install Required Libraries
Make sure the needed Python packages are installed:
```bash
pip install pandas sqlalchemy pymysql 
```
Or install all dependencies from:
```bash
pip install -r requirements.txt
```
### 🔑 Kaggle API Setup

Since the dataset was downloaded using Kaggle API, follow these steps:
1. Generate Kaggle API Token
- Go to your Kaggle account
- Navigate to Account - API - Create New API Token
- A file named kaggle.json will be downloaded

2. Create Kaggle directory
 Windows (PowerShell)
```powershell
mkdir $env:USERPROFILE\.kaggle
```
3. Move kaggle.json to the directory
```powershell
copy $env:USERPROFILE\Downloads\kaggle.json $env:USERPROFILE\.kaggle\
```

📥 Download the Dataset Using Kaggle API
Navigate to your project folder:

```bash
cd path/to/your/project
```
Download the dataset:
```bash
kaggle datasets download -d dataset-name
```
Unzip it:
```bash
unzip dataset-name.zip
```
Replace dataset-name with the actual slug from Kaggle

### 🚀How to Use

- Clone the repository.
- Load the dataset into MySQL or explore using the EDA notebook.
- Run the SQL queries from queries.sql.
- Review insights in the Business Insights PDF Report

