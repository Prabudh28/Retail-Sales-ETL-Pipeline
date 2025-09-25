# Retail-Sales-ETL-Pipeline
An end-to-end data pipeline project processing retail sales data, with analysis in SQL and a final dashboard in Power BI.


# Retail Sales ETL and Insights Pipeline

### Project Overview

This project demonstrates an end-to-end data engineering pipeline built to process, analyze, and visualize over 1 million retail sales transactions. The goal was to extract raw data, transform it into a clean and usable format, load it into a relational database, and then generate key business insights through SQL queries and an interactive Power BI dashboard.

### Tools and Technologies

* **Data Extraction & Transformation (ETL):** Python (Pandas)
* **Database:** PostgreSQL
* **Data Analysis:** SQL
* **Data Visualization:** Power BI

### Project Workflow

1.  **Data Extraction:** The raw data, consisting of two years of transactions in an Excel file, was extracted into a Pandas DataFrame.
2.  **Data Transformation:** The data was cleaned and preprocessed using Python. Key steps included:
    * Combining data from two separate sheets.
    * Standardizing column names.
    * Handling missing values.
    * Removing canceled orders and invalid entries.
    * Creating a `total_price` column for analysis.
3.  **Data Loading:** The cleaned data was loaded into a PostgreSQL database table named `transactions`.
4.  **Data Analysis:** SQL queries were run in pgAdmin to answer key business questions.
5.  **Visualization:** Power BI was connected to the PostgreSQL database to create an interactive dashboard presenting the findings.

### Key Insights from SQL Analysis

* **Best-Selling Products:** The top 10 products by quantity sold were identified, showing which items are most popular. (You can list one or two examples here).
* **Monthly Sales Trends:** Sales revenue was calculated for each month, revealing seasonal patterns and overall business growth.
* **High-Value Customers:** The top 10 customers by total spending were identified, highlighting the most valuable customer segment.


### How to Run This Project

1.  **Prerequisites:** Python 3.x, PostgreSQL, Power BI Desktop.
2.  **Clone the repository:** `git clone https://github.com/YourUsername/Retail-Sales-ETL-Pipeline.git`
3.  **Install Python libraries:** `pip install pandas sqlalchemy psycopg2-binary`
4.  **Set up the database:** Create a PostgreSQL database named `retail_sales`.
5.  **Run the ETL script:** Update the `db_password` in `etl_script.py` and run it: `python etl_script.py`. This will load the data into PostgreSQL.
6.  **Analyze and Visualize:** Use the `.sql` files in the `sql_queries` folder for analysis or connect Power BI to the `retail_sales` database.
