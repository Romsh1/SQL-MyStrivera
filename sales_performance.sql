-- Create Table
CREATE TABLE sales_record (
    id INT AUTO_INCREMENT PRIMARY KEY,
    salesperson VARCHAR(50),
    region VARCHAR(50),
    sale_date DATE,
    amount DECIMAL(10, 2)
);

-- Insert Sample Data
INSERT INTO sales_record (salesperson, region, sale_date, amount) VALUES
('Alice', 'East', '2024-04-01', 500),
('Alice', 'East', '2024-04-05', 700),
('Alice', 'East', '2024-04-20', 300),
('Bob', 'East', '2024-04-02', 600),
('Bob', 'East', '2024-04-10', 450),
('Bob', 'East', '2024-04-15', 100),
('Charlie', 'West', '2024-04-03', 900),
('Charlie', 'West', '2024-04-12', 850),
('Daisy', 'West', '2024-04-07', 400),
('Daisy', 'West', '2024-04-22', 1000),
('Evan', 'South', '2024-04-08', 200),
('Evan', 'South', '2024-04-18', 500),
('Fay', 'South', '2024-04-06', 700),
('Fay', 'South', '2024-04-13', 300),
('Grace', 'North', '2024-04-04', 450),
('Grace', 'North', '2024-04-09', 550),
('Grace', 'North', '2024-04-21', 650);

-- Top 2 Salespeople per Region
SELECT
	* 
FROM (
	SELECT
		*,
		RANK() OVER (PARTITION BY region ORDER BY amount DESC) AS sales_rank
	FROM sales_record
) sr
WHERE 
	sales_rank <= 2;
    
-- Running Total per Salesperson
SELECT
	*,
    SUM(amount) OVER (PARTITION BY salesperson ORDER BY sale_date) AS running_total
FROM sales_data;

-- Sales Gaps (Days Since Last Sale)
SELECT
	*,
    DATEDIFF(sale_date, LAG(sale_date) OVER (PARTITION BY salesperson ORDER BY sale_Date)) AS gap_days
FROM sales_record;

-- % Contribution to Region Total
SELECT 
	*,
   ROUND((amount / SUM(amount) OVER (PARTITION BY region)) * 100, 2) AS sales_per_region
FROM sales_record;

-- Flag First Sale per Salesperson
SELECT
	*,
    CASE 
		WHEN ROW_NUMBER() OVER (PARTITION BY salesperson) = 1 THEN 'Yes' ELSE 'No' 
	END AS first_sale
FROM sales_record;