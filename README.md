# Walmart Sales Data Analysis

## About
This project aims to explore the Walmart Sales data to understand top-performing branches and products, sales trends of different products, and customer behavior. The objective is to study how sales strategies can be improved and optimized. The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition.

### Competition Overview:
"In this recruiting competition, job-seekers are provided with historical sales data for 45 Walmart stores located in different regions. Each store contains many departments, and participants must project the sales for each department in each store. To add to the challenge, selected holiday markdown events are included in the dataset. These markdowns are known to affect sales, but it is challenging to predict which departments are affected and the extent of the impact." – Source: Kaggle

## Purpose of the Project
The major aim of this project is to gain insights into the sales data of Walmart and to understand the different factors that affect sales across various branches.

## About the Data
The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition. It contains sales transactions from three different branches of Walmart, respectively located in Mandalay, Yangon, and Naypyitaw. The data has 17 columns and 1000 rows:

| Column                  | Description                             | Data Type        |
|-------------------------|-----------------------------------------|------------------|
| `invoice_id`             | Invoice of the sales made               | VARCHAR(30)      |
| `branch`                 | Branch at which sales were made         | VARCHAR(5)       |
| `city`                   | Location of the branch                  | VARCHAR(30)      |
| `customer_type`          | Type of customer                        | VARCHAR(30)      |
| `gender`                 | Gender of the customer                  | VARCHAR(10)      |
| `product_line`           | Product line of the product sold        | VARCHAR(100)     |
| `unit_price`             | Price of each product                   | DECIMAL(10, 2)   |
| `quantity`               | Amount of the product sold              | INT              |
| `VAT`                    | Tax on the purchase                     | FLOAT(6, 4)      |
| `total`                  | Total cost of the purchase              | DECIMAL(10, 2)   |
| `date`                   | Date of the purchase                    | DATE             |
| `time`                   | Time of the purchase                    | TIMESTAMP        |
| `payment_method`         | Total amount paid                       | DECIMAL(10, 2)   |
| `cogs`                   | Cost of goods sold                      | DECIMAL(10, 2)   |
| `gross_margin_percentage`| Gross margin percentage                 | FLOAT(11, 9)     |
| `gross_income`           | Gross Income                            | DECIMAL(10, 2)   |
| `rating`                 | Rating                                  | FLOAT(2, 1)      |

## Analysis List

### 1. Product Analysis
Conduct an analysis to understand the different product lines, identify the best-performing product lines, and determine the product lines that need improvement.

### 2. Sales Analysis
Analyze sales trends across different products to measure the effectiveness of each sales strategy and identify any modifications needed to increase sales.

### 3. Customer Analysis
Uncover the different customer segments, purchase trends, and profitability of each customer segment.

## Approach

### 1. Data Wrangling
- Inspect the data to ensure there are no NULL or missing values.
- Create a database with tables, ensuring no NULL values exist by setting `NOT NULL` for each field.
- Feature Engineering:
  - Add a column `time_of_day` to classify sales into Morning, Afternoon, and Evening categories.
  - Add a column `day_name` that extracts the day of the week from the transaction date.
  - Add a column `month_name` that extracts the month from the transaction date.

### 2. Exploratory Data Analysis (EDA)
Perform EDA to answer the listed questions and project aims.

## Business Questions to Answer

### Generic Questions
- How many unique cities are in the dataset?
- Which city corresponds to each branch?

### Product Questions
- How many unique product lines are in the data?
- What is the most common payment method?
- What is the top-selling product line?
- What is the total revenue by month?
- Which month had the highest COGS?
- Which product line generated the largest revenue?
- Which city generated the largest revenue?
- Which product line had the largest VAT?
- Fetch each product line and add a column indicating "Good" or "Bad" based on average sales.
- Which branch sold more products than the average?
- What is the most common product line by gender?
- What is the average rating for each product line?

### Sales Questions
- Number of sales made at each time of the day per weekday?
- Which customer type brings in the most revenue?
- Which city has the largest tax percentage/VAT?
- Which customer type pays the most in VAT?

### Customer Questions
- How many unique customer types are there?
- How many unique payment methods are there?
- What is the most common customer type?
- Which customer type buys the most?
- What is the gender of most customers?
- What is the gender distribution per branch?
- Which time of day has the most customer ratings?
- Which time of day has the most ratings per branch?
- Which day of the week has the best average ratings?
- Which day of the week has the best average ratings per branch?

## Revenue and Profit Calculations

- **COGS (Cost of Goods Sold)**: 
  $$ \text{COGS} = \text{Unit Price} \times \text{Quantity} $$

- **VAT (Value Added Tax)**: 
  $$ \text{VAT} = 5\% \times \text{COGS} $$

  VAT is added to the COGS to calculate the total amount billed to the customer.

- **Total (Gross Sales)**: 
  $$ \text{Total} = \text{VAT} + \text{COGS} $$

- **Gross Profit (Gross Income)**: 
  $$ \text{Gross Profit} = \text{Total (Gross Sales)} - \text{COGS} $$

- **Gross Margin**: 
  $$ \text{Gross Margin} = \frac{\text{Gross Profit}}{\text{Total Revenue}} $$

### Example:
Given the first row of data:

- **Unit Price** = 45.79
- **Quantity** = 7
- **COGS** = 45.79 × 7 = 320.53
- **VAT** = 5% × 320.53 = 16.0265
- **Total** = 320.53 + 16.0265 = 336.5565
- **Gross Margin Percentage** = (16.0265 / 336.5565) ≈ 4.76%

