SELECT * FROM SALESDATAWALMART.sales;
SELECT DATE, DAYNAME(date) AS day_name FROM sales;
ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);
UPDATE sales 
SET day_name = DAYNAME(DATE);
---month_name
SELECT date, MONTHNAME(date) From sales;
Alter table sales ADD COLUMN month_name VARCHAR (10);

SELECT DISTINCT city FROM sales;
SELECT DISTINCT branch FROM sales;
SELECT DISTINCT City, branch FROM sales;


--- ------------------------------------------------
-- ---------------------Prodcut---------------------

-- How many unique product lines does the data have?
SELECT Count(DISTINCT product_line) from Sales;

--- ------------------------------------------------
-- What is the most common payment method?----------CASH
SELECT Payment_method, Count(PAYMENT_METHOD) as cnt FROM SALES group by payment_method order by cnt DESC;

--- ------------------------------------------------
-What is the most selling product line?---------- Fashion Accessories
SELECT product_line, Count(product_line) as cnt FROM sales GROUP BY product_line order by cnt DESC;

--- ------------------------------------------------
-- What is the total revenue by month?----------
SELECT month_name as MONTH, sum(total) AS total_revenue from SALES group by month_name order by total_revenue DESC;

--- ------------------------------------------------
-- What MONTH HAS THE LARGEST COGS?----------
SELECT month_name AS Month,SUM(COGS) AS COGS FROM SALES GROUP BY month_name Order by COGS DESC;

--- ------------------------------------------------
-- What product line had the largest revenue?----------FOOD & BEVERAGES 
Select product_line, SUM(total) AS total_revenue from Sales group by Product_line order by Total_revenue DESC;
--- ------------------------------------------------
-- Which city had the largest revenue?----------FOOD & BEVERAGES 
Select city, branch, SUM(total) AS total_revenue from Sales group by city, branch order by total_revenue DESC;
--- ------------------------------------------------

SELECT product_line, AVG(VAT) AS avg_tax FROM sales GROUP BY PRODUCT_line ORDER BY avg_tax DESC;
--- ------------------------------------------------

---- Which branch sold more products than the average product sold?
SELECT branch, SUM(quantity) AS qty from sales GROUP BY branch HAVING SUM(quantity) > (SELECT AVG(quantity) FROM Sales);

----- What is the most common product line by gender?
Select Gender,product_line, COUNT(gender) as Total_cnt from sales group by gender, product_line ORDER BY total_cnt DESC;

-- What is the average rating of each product line? 
Select ROUND(AVG(RATING), 2) AS avg_rating, product_line from sales Group by product_line Order by avg_rating DESC;

--------------------------------------------------------------------------------------------------------
----- SALES --------------------------------------------------------------------------------------------

-- Number of sales made in each time of the day per weekend
SELECT time_of_day, COUNT(*) AS TOTAL_SALES FROM SALES WHERE DAY_NAME = "MONDAY"
GROUP BY TIME_OF_DAY 
ORDER BY TOTAL_SALES DESC;

										
