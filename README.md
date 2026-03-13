#E-Commerce Data Analysis - SQL

#Project Overview

This project analyzes e-commerce transaction data using SQL to identify customer purchasing behavior, product performance, and revenue trends. The analysis focuses on understanding how customers interact with the platform and which factors contribute most to overall revenue.

#Project Objective

The objective of this project is to analyze transactional e-commerce data and extract meaningful insights related to sales performance, customer spending patterns, product category performance, and payment trends.

#Features

1. Customer spending analysis

2. Product category performance analysis

3. Monthly revenue trend analysis

4. Payment method usage analysis

5. Customer ranking based on spending

#Tools Used

1.SQL

2.PostgreSQL

3.DB Fiddle

4.Data Modeling

5.Data Analysis

#Dataset

This project is based on the Brazilian E-Commerce Public Dataset by Olist.

The original dataset contains more than 100,000 orders and multiple related tables including customers, orders, order items, products, and payments.
Due to execution limitations in the online SQL environment, a simplified dataset was created to simulate the relational structure and demonstrate SQL analysis.

#Database Schema

The database was structured using relational tables:

1.Customers

2.Orders

3.Order Items

4.Products

5.Payments

These tables were connected using appropriate keys to simulate an e-commerce transactional database.

#Key Analysis

The analysis performed in this project includes:

1.Total revenue calculation

2.Customer purchase behavior analysis

3.Monthly order and revenue trends

4.Product category sales performance

5.Payment method distribution

6.Ranking customers based on spending using window functions

#Key Insights

Here are some insights derived from the analysis:

1.Total revenue generated from all transactions is 495.

2.Customer C1 generated the highest revenue and is the top spending customer.

3.The electronics category recorded the highest number of sales and generated the most revenue.

4.Credit cards are the most commonly used payment method.

5.Sao Paulo (SP) contributes the highest share of total revenue.

6.February recorded the highest monthly revenue among the analyzed months.

7.A small group of repeat customers contributes significantly to overall revenue.

#Business Recommendations

Here are some recommendations derived from the analysis:

1.Implement loyalty programs to retain high-value customers and increase repeat purchases.

2.Increase marketing focus and inventory allocation for the electronics category.

3.Partner with financial institutions to offer credit card promotions and installment options.

4.Expand targeted marketing strategies in high-performing regions such as São Paulo.

5.Introduce bundle offers or cross-selling strategies to increase the average order value.

#How to Use

Open the schema.sql file to view the database structure and sample data.

Run the SQL queries in queries.sql using PostgreSQL or any compatible SQL environment.

Review the query results to understand the analysis and insights.

#Author

Janani Priya
