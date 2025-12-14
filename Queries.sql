USE walmart_db;
SHOW TABLES;

SELECT COUNT(*) FROM walmart;

SELECT * FROM walmart LIMIT 10;

SELECT DISTINCT payment_method 
FROM walmart;

-- Business Problems

-- Sales Performance by Payment Method
SELECT payment_method,
       COUNT(*) AS total_transactions,
       SUM(quantity) AS total_quantity_sold,
       ROUND(SUM(quantity * unit_price),2) AS total_revenue
FROM walmart
GROUP BY payment_method;


-- Category with Highest Sales Volume in Each Branch
SELECT *
FROM (
SELECT branch,
       category,
       SUM(quantity) AS tot_quantity,
       ROW_NUMBER() OVER(PARTITION BY branch ORDER BY SUM(quantity) DESC) as rn
   FROM walmart
   GROUP BY branch, category
) as rk
WHERE rn = 1;

-- identify the busiest day for each branch based on the number of transaction
SELECT *
FROM(
SELECT branch,
DAYNAME(STR_TO_DATE(date,'%d/%m/%y')) AS day,
COUNT(*) AS no_transactions,
ROW_NUMBER() OVER(PARTITION BY branch ORDER BY COUNT(*) DESC) AS rn
FROM walmart
GROUP BY branch, DAYNAME(STR_TO_DATE(date,'%d/%m/%y'))
) AS rnr
WHERE rn = 1;

-- Average, Minimum, and Maximum Ratings Across Categories per City
SELECT City,
Category,
MIN(rating) AS min_rating,
MAX(rating) AS max_rating,
ROUND(AVG(rating),2) AS avg_rating
FROM walmart
GROUP BY City, Category;

-- Total Profit by Category (Highest to Lowest)
SELECT category,
ROUND(SUM(Total * profit_margin),2) AS tot_profit
FROM walmart
GROUP BY category
ORDER BY tot_profit DESC;

-- Most frequently used payment method in each branch
SELECT * 
FROM(
    SELECT 
        branch,
        payment_method,
        COUNT(*) AS no_transactions,
        RANK() OVER(
            PARTITION BY branch 
            ORDER BY COUNT(*) DESC
        ) AS rnk
    FROM walmart
    GROUP BY branch, payment_method
) AS rk
WHERE rnk = 1;

-- Top Revenue-Generating Payment Method by Branch
SELECT * 
FROM(
    SELECT 
        branch,
        payment_method,
        SUM(Total) AS total_revenue,
        ROW_NUMBER() OVER (
            PARTITION BY branch 
            ORDER BY SUM(Total) DESC
        ) AS rn
    FROM walmart
    GROUP BY branch, payment_method
) AS r
WHERE rn = 1;

-- Customer Traffic by Time of Day for Each Branch
SELECT 
    branch,
    CASE 
        WHEN HOUR(STR_TO_DATE(time, '%H:%i:%s')) < 12 THEN 'Morning'
        WHEN HOUR(STR_TO_DATE(time, '%H:%i:%s')) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_of_day,
    COUNT(*) AS no_transactions
FROM walmart
GROUP BY 
    branch,
    CASE 
        WHEN HOUR(STR_TO_DATE(time, '%H:%i:%s')) < 12 THEN 'Morning'
        WHEN HOUR(STR_TO_DATE(time, '%H:%i:%s')) BETWEEN 12 AND 17 THEN 'Afternoon'
        ELSE 'Evening'
    END
ORDER BY 
    branch,
    no_transactions DESC;


