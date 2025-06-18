CREATE TABLE sales_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salesperson VARCHAR(50),
    region VARCHAR(50),
    sale_date DATE,
    amount DECIMAL(10, 2)
);

INSERT INTO sales_data (salesperson, region, sale_date, amount) VALUES
('Alice', 'East', '2024-06-01', 500),
('Alice', 'East', '2024-06-05', 700),
('Bob', 'East', '2024-06-02', 300),
('Bob', 'East', '2024-06-07', 400),
('Charlie', 'West', '2024-06-01', 800),
('Charlie', 'West', '2024-06-06', 900),
('Alice', 'East', '2024-06-10', 600),
('Bob', 'East', '2024-06-11', 200),
('Charlie', 'West', '2024-06-08', 750),
('Alice', 'East', '2024-06-12', 1000);

SELECT * FROM sales_data;

-- 1. % Contribution of Each Sale by Salesperson
-- Show what percentage each sale contributes to the total sales of that salesperson.
SELECT
	*,
    SUM(amount) OVER (PARTITION BY salesperson) AS sales_by_each,
    ROUND((amount/(SUM(amount) OVER (PARTITION BY salesperson)))*100, 2) AS percentage_accum
FROM sales_data;

--  2. Identify Duplicate Sale Amounts per Salesperson
SELECT *,
	RANK() OVER (PARTITION BY salesperson ORDER BY amount) AS dup_sales
FROM sales_data;

-- 3. Find Highest Sale Per Salesperson
SELECT
	*
FROM (
	SELECT *,
		RANK() OVER (PARTITION BY salesperson ORDER BY amount DESC) AS dup_sales
	FROM sales_data
    ) d
WHERE 
	dup_sales = 1;

--  4. Count of Sales So Far by Date per Region
SELECT
	*,
    ROW_NUMBER() OVER (PARTITION BY region ORDER BY sale_date) AS sale_cnt
FROM sales_data;

-- 5. Calculate Sale Gap (Days Between Sales) per Salesperson
SELECT
	*,
    DATEDIFF(sale_date, LAG(sale_date) OVER (PARTITION BY salesperson ORDER BY sale_date)) AS gap_days
FROM sales_data;

--  6. First and Last Sale Date for Each Salesperson
SELECT 	
	*,
    MIN(sale_date) OVER (PARTITION BY salesperson) AS first_sale_date,
    MAX(sale_date) OVER (PARTITION BY salesperson) AS last_sale_date
FROM sales_data;

--  7. Flag the First Sale per Region
SELECT
		*,
		CASE
			WHEN RANK() OVER (PARTITION BY region ORDER BY sale_date) = 1 THEN 'YES' ELSE 'NO' 
		END AS rank_by_region
	FROM sales_data;

SELECT 
	*
FROM (
	SELECT
		*,
		RANK() OVER (PARTITION BY region ORDER BY sale_date) AS rank_by_region
	FROM sales_data) saar
WHERE 
	rank_by_region = 1;
    
--  8. Find Sales Above Regional Average
SELECT
	*
FROM (
	SELECT
		*,
		ROUND(AVG(amount) OVER (PARTITION BY region), 2) AS regional_avg
	FROM sales_data
) ra
WHERE 
	amount > regional_avg;
    
--  9. Moving Total of Last 2 Sales (Sliding Window)
SELECT
	*,
    SUM(amount) OVER (PARTITION BY salesperson ORDER BY sale_date ROWS BETWEEN 1 PRECEDING AND CURRENT ROW) AS moving_total
FROM sales_data;

-- 10. Find Gaps in Sales (Salespeople Who Skipped >5 Days)
SELECT
	*
FROM (
	SELECT
		*,
		DATEDIFF(sale_date, LAG(sale_date) OVER (PARTITION BY salesperson)) AS gap_days
	FROM sales_data
) gp
WHERE 
	gap_days > 4;

#Set 1: ROW_NUMBER, RANK, DENSE_RANK
-- 1 Assign a row number to each sale by salesperson based on sale_date.
SELECT 
	*,
    ROW_NUMBER() OVER (PARTITION BY salesperson ORDER BY sale_date) AS row_num
FROM sales_data;
	
-- 2 Rank the sales by amount within each region. 
SELECT 
	*,
    RANK() OVER (PARTITION BY region ORDER BY amount DESC) AS rank_sales
FROM sales_data;

-- 3 Use DENSE_RANK() to handle ties in sale amount within each region.
SELECT
	*,
    DENSE_RANK() OVER (PARTITION BY region ORDER BY amount DESC) AS dense_rank_sales
FROM sales_data;

-- Set 2: LEAD, LAG
-- 4 Show the previous and next sale amount for each salesperson based on sale_date.
SELECT
	*,
    LAG(amount) OVER (PARTITION BY salesperson ORDER BY sale_date) AS prev_amt,
    LEAD(amount) OVER (PARTITION BY salesperson ORDER BY sale_date) AS next_amt
FROM sales_data;

-- 5 Find sales where the current amount is higher than the previous sale by the same person.
SELECT * FROM (
	SELECT 
		*,
		LAG(amount) OVER (PARTITION BY salesperson ORDER BY sale_date) AS prev_amount
	FROM sales_data
) p
WHERE amount > prev_amount;

-- Set 3: OVER(PARTITION BY...)
-- 6 Calculate total sales per salesperson using SUM() with window function.
SELECT
	*,
    SUM(amount) OVER (PARTITION BY salesperson) AS total_sales
FROM sales_data;

-- 7 Calculate total sales per region using SUM() with window function.
SELECT
	*,
    SUM(amount) OVER (PARTITION BY region) AS sales_amount
FROM sales_data;

--  Set 4: Running Totals & Moving Averages
-- 8 Running total of sales per salesperson over time.
SELECT
	*,
    SUM(amount) OVER (PARTITION BY salesperson ORDER BY sale_date) AS running_total
FROM sales_data;

-- 9 3-day moving average of sales for each salesperson.
SELECT
	*,
    AVG(amount) OVER (PARTITION BY salesperson ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM sales_data;

-- Set 5: Challenge Questions
-- 10 Find the top 2 highest sales per region.
SELECT * 
	FROM (
		SELECT
			*,
			RANK() OVER (PARTITION BY region ORDER BY amount DESC) AS rank_sales
		FROM sales_data
	) ranked
WHERE 
	rank_sales <= 2;

-- 11 For each sale, find the total sales made up to that date by the same salesperson.
SELECT *,
       SUM(amount) OVER (
           PARTITION BY salesperson 
           ORDER BY sale_date 
           ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
       ) AS cumulative_total
FROM sales_data;