## 📊Walmart Sales Analysis
Overview

This project analyzes Walmart sales data to identify key business insights using MySQL and Python. The analysis focuses on sales performance, customer behavior, profitability, and operational patterns across different branches and cities.

The project contains:
- Data cleaning and exploration (Python)
- SQL-based analytical queries
- A business insights report summarizing findings

### Data Preparation

Data cleaning and preprocessing were performed in the [eda.ipynb](eda.ipynb). Steps included:

- Removing inconsistent spacing and non-printable characters
- Parsing date and time values
- Ensuring correct data types
- Validating numerical fields
- Preparing the dataset for SQL analysis

### SQL Analysis

All SQL queries used in the analysis are provided in the [Queries.sql](Queries.sql) 
The analytical objectives include:
- Sales performance by payment method
- Top-selling category in each branch
- Busiest day of the week by branch
- Category ratings by city
- Total profit by product category
- Most frequently used payment method per branch
- Customer traffic analysis by time of day
- Revenue decline analysis (2022 vs. 2023)

### 📈Business Insights

A detailed summary of insights derived from the SQL analysis is available in [Walmart Business Insights Report](Walmart%20Business%20Insights.pdf)



### 🛠️Tools and Technologies

- MySQL
- Python (Pandas)
- Jupyter Notebook

### How to Use

- Clone the repository.
- Load the dataset into MySQL or explore using the EDA notebook.
- Run the SQL queries from queries.sql.
- Refer to the PDF report for business insights.

