USE intermediate_sales;

-- Creating table
CREATE TABLE intermediate_sales_data (
    sale_id INT PRIMARY KEY,
    salesperson VARCHAR(50),
    region VARCHAR(50),
    product_category VARCHAR(50),
    product_name VARCHAR(50),
    sale_date DATE,
    quantity INT,
    unit_price DECIMAL(10, 2),
    total_amount DECIMAL(10, 2),
    payment_method VARCHAR(50)
);

-- Feeding Data
INSERT INTO intermediate_sales_data VALUES (1, 'Fay', 'West', 'Toys', 'Jeans', '2025-06-17', 3, 167.01, 501.03, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (2, 'Liam', 'Central', 'Toys', 'Tablet', '2025-07-06', 5, 276.51, 1382.55, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (3, 'Fay', 'East', 'Toys', 'Tablet', '2025-03-07', 5, 56.66, 283.30, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (4, 'Noah', 'South', 'Clothing', 'Jeans', '2025-06-17', 2, 270.15, 540.30, 'Cash');
INSERT INTO intermediate_sales_data VALUES (5, 'Liam', 'West', 'Home', 'Tablet', '2025-02-25', 3, 380.66, 1141.98, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (6, 'Fay', 'East', 'Books', 'Book', '2025-02-18', 4, 89.76, 359.04, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (7, 'Noah', 'East', 'Toys', 'Blender', '2025-05-05', 5, 276.48, 1382.40, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (8, 'Liam', 'North', 'Toys', 'Speaker', '2025-02-15', 2, 495.34, 990.68, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (9, 'Emma', 'South', 'Electronics', 'TV', '2025-03-01', 3, 192.22, 576.66, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (10, 'Evan', 'Central', 'Electronics', 'Phone', '2025-01-11', 1, 417.55, 417.55, 'Cash');
INSERT INTO intermediate_sales_data VALUES (11, 'Fay', 'Central', 'Toys', 'Blender', '2025-01-18', 5, 348.92, 1744.60, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (12, 'Liam', 'South', 'Toys', 'Speaker', '2025-04-30', 4, 262.10, 1048.40, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (13, 'Emma', 'West', 'Books', 'Book', '2025-04-07', 3, 78.99, 236.97, 'Cash');
INSERT INTO intermediate_sales_data VALUES (14, 'Evan', 'East', 'Electronics', 'Laptop', '2025-05-01', 2, 391.00, 782.00, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (15, 'Fay', 'North', 'Clothing', 'Jeans', '2025-06-11', 1, 148.00, 148.00, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (16, 'Noah', 'South', 'Books', 'Book', '2025-05-21', 5, 68.33, 341.65, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (17, 'Liam', 'East', 'Electronics', 'Camera', '2025-01-25', 3, 328.44, 985.32, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (18, 'Emma', 'North', 'Toys', 'Drone', '2025-01-06', 2, 456.55, 913.10, 'Cash');
INSERT INTO intermediate_sales_data VALUES (19, 'Evan', 'West', 'Electronics', 'Laptop', '2025-06-21', 4, 475.26, 1901.04, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (20, 'Noah', 'East', 'Clothing', 'Jeans', '2025-05-19', 3, 215.44, 646.32, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (21, 'Fay', 'South', 'Books', 'Book', '2025-03-24', 1, 73.99, 73.99, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (22, 'Emma', 'West', 'Electronics', 'Tablet', '2025-02-03', 4, 311.10, 1244.40, 'Cash');
INSERT INTO intermediate_sales_data VALUES (23, 'Liam', 'North', 'Toys', 'Drone', '2025-06-10', 2, 412.75, 825.50, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (24, 'Noah', 'East', 'Clothing', 'Jeans', '2025-07-01', 2, 173.45, 346.90, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (25, 'Emma', 'Central', 'Books', 'Book', '2025-06-13', 3, 58.99, 176.97, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (26, 'Evan', 'South', 'Toys', 'Speaker', '2025-04-15', 1, 420.40, 420.40, 'Cash');
INSERT INTO intermediate_sales_data VALUES (27, 'Fay', 'West', 'Electronics', 'Phone', '2025-06-08', 3, 399.20, 1197.60, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (28, 'Emma', 'North', 'Home', 'Blender', '2025-06-20', 5, 105.00, 525.00, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (29, 'Noah', 'Central', 'Electronics', 'TV', '2025-03-17', 4, 294.60, 1178.40, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (30, 'Liam', 'West', 'Books', 'Book', '2025-02-26', 2, 86.60, 173.20, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (31, 'Evan', 'East', 'Electronics', 'Laptop', '2025-02-09', 3, 378.22, 1134.66, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (32, 'Emma', 'South', 'Toys', 'Drone', '2025-05-13', 2, 401.15, 802.30, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (33, 'Noah', 'East', 'Clothing', 'Jeans', '2025-04-12', 4, 250.00, 1000.00, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (34, 'Liam', 'North', 'Books', 'Book', '2025-04-20', 3, 91.20, 273.60, 'Cash');
INSERT INTO intermediate_sales_data VALUES (35, 'Fay', 'Central', 'Electronics', 'TV', '2025-03-03', 1, 315.75, 315.75, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (36, 'Evan', 'South', 'Toys', 'Speaker', '2025-01-09', 5, 240.00, 1200.00, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (37, 'Emma', 'West', 'Electronics', 'Phone', '2025-01-31', 2, 455.66, 911.32, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (38, 'Noah', 'North', 'Home', 'Blender', '2025-04-25', 1, 199.99, 199.99, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (39, 'Fay', 'East', 'Clothing', 'Jeans', '2025-02-28', 4, 220.80, 883.20, 'Cash');
INSERT INTO intermediate_sales_data VALUES (40, 'Liam', 'South', 'Books', 'Book', '2025-03-14', 3, 59.99, 179.97, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (41, 'Evan', 'West', 'Electronics', 'Tablet', '2025-06-25', 4, 309.99, 1239.96, 'Cash');
INSERT INTO intermediate_sales_data VALUES (42, 'Fay', 'North', 'Toys', 'Drone', '2025-05-30', 2, 458.00, 916.00, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (43, 'Emma', 'Central', 'Clothing', 'Jeans', '2025-03-05', 3, 190.90, 572.70, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (44, 'Noah', 'West', 'Books', 'Book', '2025-02-05', 5, 69.99, 349.95, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (45, 'Liam', 'East', 'Electronics', 'Laptop', '2025-06-03', 2, 410.00, 820.00, 'Cash');
INSERT INTO intermediate_sales_data VALUES (46, 'Evan', 'South', 'Toys', 'Tablet', '2025-01-28', 3, 289.50, 868.50, 'Debit Card');
INSERT INTO intermediate_sales_data VALUES (47, 'Emma', 'North', 'Electronics', 'Camera', '2025-02-22', 1, 365.40, 365.40, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (48, 'Noah', 'East', 'Clothing', 'Jeans', '2025-04-28', 4, 234.00, 936.00, 'Credit Card');
INSERT INTO intermediate_sales_data VALUES (49, 'Fay', 'West', 'Toys', 'Speaker', '2025-07-04', 2, 382.00, 764.00, 'Online Payment');
INSERT INTO intermediate_sales_data VALUES (50, 'Evan', 'Central', 'Books', 'Book', '2025-06-09', 3, 72.00, 216.00, 'Cash');

-- Subqueries (15 Questions)
-- 1 List all sales with total_amount greater than the average total_amount.
SELECT
	*
FROM intermediate_sales_data 
	WHERE total_amount >
						 (
								SELECT
									ROUND(AVG(total_amount), 2) AS avg_total
								FROM intermediate_sales_data
							);

-- 2 Find the product(s) that had the maximum total sales.
SELECT 
	product_name 
FROM intermediate_sales_data 
	WHERE total_amount = (
							SELECT 
								MAX(total_amount) AS max_total_sales 
							FROM intermediate_sales_data
						);
                        
-- 3 Show salespersons who sold more total quantity than 'Emma'.
SELECT
	salesperson,
    SUM(quantity) AS sold_quantity
FROM intermediate_sales_data
	GROUP BY salesperson
    HAVING sold_quantity > (
							SELECT
								SUM(quantity) AS sold_by_emma
							FROM intermediate_sales_data
								GROUP BY salesperson
								HAVING salesperson = 'Emma'
							);

-- 4 Get the list of products never sold via 'Cash'.
SELECT
	DISTINCT product_name
FROM intermediate_sales_data
	WHERE product_name NOT IN (
									SELECT
										DISTINCT product_name
									FROM intermediate_sales_data
										WHERE payment_method = 'Cash'
								);

-- 5 Find the regions with total sales above the average of all regions.
SELECT
	region,
    SUM(total_amount) AS sales_per_region
FROM intermediate_sales_data
	GROUP BY region
    HAVING sales_per_region > (
									SELECT
										AVG(total_sales)
									FROM (
									SELECT 
										SUM(total_amount) AS total_sales
									FROM intermediate_sales_data
										GROUP BY region
								) AS total_sales_all_region
							);

-- 6 List sales where unit_price is higher than the average unit_price for that product.
SELECT
	product_name,
    unit_price
FROM intermediate_sales_data s
	WHERE unit_price > (
						SELECT
							AVG(unit_price) AS avg_price
						FROM intermediate_sales_data
							WHERE product_name = s.product_name
						);
                        
-- 7 Show sales that occurred on the latest sale date.
SELECT
	* 
FROM intermediate_sales_data 
	WHERE sale_date = (
						SELECT
							MAX(sale_date) AS latest_sale_date
						FROM intermediate_sales_data
					);

-- 8 Get products whose average quantity sold is more than 3.
SELECT
	product_name
FROM (  
		SELECT 
			product_name,
			AVG(quantity) AS avg_quantity_sold
		FROM intermediate_sales_data
			GROUP BY product_name
	) AS avg_table
WHERE avg_quantity_sold > 3;

-- 9 Find sales with a total_amount above the total region average.
SELECT
	*
FROM intermediate_sales_data
	WHERE total_amount > (
							SELECT 
								AVG(region_avg)
							FROM (
									SELECT
										region,
										SUM(total_amount) AS region_avg
									FROM intermediate_sales_data
										GROUP BY region
								) region_tbl
							);

-- 10 List salespersons who made sales in more than one region.
SELECT
	salesperson
FROM (
		SELECT
			salesperson,
			COUNT(DISTINCT region) AS region_count
		FROM intermediate_sales_data
			GROUP BY salesperson
	) AS reg_cnt_tbl
WHERE region_count > 1;

-- 11 Identify the top-selling product in each category.
SELECT
	product_name, product_category
FROM (
		SELECT
			product_name, product_category,
			SUM(quantity) AS cnt_quantity
		FROM intermediate_sales_data
			GROUP BY product_name, product_category
		   ) AS sales_summary
	WHERE (product_category, cnt_quantity) IN (
												SELECT
													product_category,
													MAX(cnt_quantity) AS max_sold
												FROM 
											(
												SELECT
													product_name, 
													product_category,
													SUM(quantity) AS cnt_quantity
												FROM intermediate_sales_data
													GROUP BY product_name, product_category
													ORDER BY cnt_quantity DESC) FIRST_SUB
													group by product_category
											);
    
-- 12 Find the product with the lowest unit_price in each region.
SELECT
	region, product_name, unit_price
FROM intermediate_sales_data
WHERE (region, unit_price) IN (
								SELECT
									region,
									MIN(unit_price) AS lowest_unit_price
								FROM intermediate_sales_data
									GROUP BY region
);

-- 13 Show products sold by only one salesperson.
SELECT
	product_name
FROM intermediate_sales_data
	GROUP BY product_name
    HAVING COUNT(DISTINCT salesperson) = 1;
    
SELECT
	product_name, COUNT(DISTINCT salesperson) AS distinct_salesperson
FROM intermediate_sales_data
	GROUP BY product_name
    ORDER BY distinct_salesperson;

-- 14 Get sales where quantity is higher than the product's overall average quantity.
SELECT 
	*
FROM intermediate_sales_data s
	 WHERE quantity > (
							SELECT
								AVG(quantity) AS avg_quantity
							FROM intermediate_sales_data s
								WHERE product_name = s.product_name
						);

-- 15 List all products where total sales exceeded 1000 using a subquery.
SELECT
	DISTINCT product_name
FROM intermediate_sales_data s
	WHERE total_amount IN (
							SELECT
								total_amount
							FROM intermediate_sales_data
								WHERE total_amount > 1000
						);

-- Window Functions (15 Questions)
-- 1 Add a row number to each sale ordered by sale_date.
SELECT
	*,
    ROW_NUMBER() OVER(PARTITION  BY sale_date) AS sale_rank
FROM intermediate_sales_data;

-- 2 Assign a row number for each sale within each region by sale_date.
SELECT
	*,
    ROW_NUMBER() OVER(PARTITION BY region ORDER BY sale_date) AS rank_by_region
FROM intermediate_sales_data;

-- 3 Compute the running total of total_amount per salesperson.
SELECT
	*,
    SUM(total_amount) OVER(PARTITION BY salesperson ORDER BY sale_date) AS running_total
FROM intermediate_sales_data;

-- 4 Show difference between each sale's total_amount and the average per region.
SELECT
	sale_id, 
    AVG(total_amount) OVER(PARTITION BY region) AS region_avg,
    total_amount - AVG(total_amount) OVER(PARTITION BY region) AS diff_amount
FROM intermediate_sales_data;

-- 5 Rank the products by total sales amount.
SELECT
	product_name,
    SUM(total_amount) AS sum_total,
    RANK() OVER(ORDER BY SUM(total_amount) DESC) AS rank_by_products
FROM intermediate_sales_data
	GROUP BY product_name;
    
-- 6 Get the top 3 sales by total_amount per region.
WITH ranked_sales AS (
SELECT
	sale_id,
    region,
    total_amount,
    RANK() OVER(PARTITION BY region ORDER BY total_amount DESC) AS top_rank
FROM intermediate_sales_data
)

SELECT
	*
FROM ranked_sales
	WHERE top_rank <= 3;

-- 7 Compute cumulative quantity sold for each product.
SELECT
	sale_id,
    product_name,
    sale_date,
    quantity,
    SUM(quantity) OVER(PARTITION BY product_name ORDER BY sale_date DESC) AS total_quantity
FROM intermediate_sales_data;

-- 8 Add a lag column showing previous sale's total_amount per salesperson.
SELECT
	sale_id,
    salesperson,
    product_name,
    sale_date,
    total_amount,
    LAG(total_amount) OVER(PARTITION BY salesperson ORDER BY sale_date) AS prev_amount
FROM intermediate_sales_data;

-- 9 Add a lead column for the next sale date per region.
SELECT
	sale_id,
    salesperson,
    region,
    sale_date,
    LEAD(sale_date) OVER(PARTITION BY region ORDER BY sale_date) AS next_sale_date
FROM intermediate_sales_data;

-- 10 Get moving average of unit_price over last 3 sales per product.
SELECT
	sale_id,
    sale_date,
    product_name,
    salesperson,
    unit_price,
    AVG(unit_price) OVER(PARTITION BY product_name ORDER BY sale_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS moving_avg
FROM intermediate_sales_data;

-- 11 Add rank for each product per category by quantity sold.
SELECT
    product_category,
    product_name,
    SUM(quantity) AS quantity_sold,
    RANK() OVER(PARTITION BY product_category ORDER BY SUM(quantity) DESC) AS rank_by_category
FROM intermediate_sales_data
	GROUP BY product_category, product_name;
    
-- 12 Partition the dataset by payment method and order by sale_date.
SELECT
    sale_date,
    payment_method,
    ROW_NUMBER() OVER(PARTITION BY payment_method ORDER BY sale_date) AS data_partition
FROM intermediate_sales_data;

-- 13 Calculate difference in total_amount from previous sale per product.
SELECT	
	product_name,
    total_amount,
    sale_date,
    total_amount - LAG(total_amount) OVER(PARTITION BY product_name ORDER BY sale_date) AS diff_in_amount
FROM intermediate_sales_data;

-- 14 Add percent rank for each sale by total_amount within region.
SELECT
	region,
    total_amount,
    PERCENT_RANK() OVER(PARTITION BY region ORDER BY total_amount DESC) AS rank_by_region
FROM intermediate_sales_data;

-- 15 Assign dense rank for each product's sale count in each region.
SELECT
	region,
    product_name,
    COUNT(quantity) AS sale_count,
    DENSE_RANK() OVER(PARTITION BY region ORDER BY COUNT(quantity) DESC) AS ranking_sale_count
FROM intermediate_sales_data
	GROUP BY region, product_name;

-- CTEs (15 Questions)
-- 1 Use a CTE to calculate average sales per category.
WITH sum_sales_per_category AS (
							SELECT
								SUM(total_amount) AS sum_total
							FROM intermediate_sales_data
								GROUP BY product_category
						)
SELECT
	ROUND(AVG(sum_total), 2) AS avg_sales_per_category
FROM sum_sales_per_category;

-- 2 Use a CTE to return top 3 products by total quantity.
WITH quantity_sold AS (
							SELECT
								product_name,
								SUM(quantity) AS total_quantity
							FROM intermediate_sales_data
								GROUP BY product_name
                                ORDER BY total_quantity DESC
					)
SELECT
	product_name
FROM quantity_sold
	LIMIT 3;

-- 3 Create a CTE to filter out sales under 300 total_amount.
WITH CTE_FILTER AS (
						SELECT
							sale_id,
                            product_name,
                            total_amount
						FROM intermediate_sales_data
					)
SELECT
	sale_id,
    product_name,
    total_amount
FROM CTE_FILTER
		WHERE total_amount < 300;

-- 4 Use a CTE to find total sales per region and filter regions with > 5000.
WITH filter_region AS (
				SELECT
					region,
					SUM(total_amount) AS total_sales_per_region
				FROM intermediate_sales_data
					GROUP BY region
)
SELECT
	region 
FROM filter_region
	WHERE total_sales_per_region > 5000;
    
-- 5 Use a recursive CTE to simulate 5-day cumulative bonus growth.
WITH RECURSIVE bonus_growth AS (
									SELECT
										1 AS day_number,
                                        100 AS bonus
									
                                    UNION ALL
                                    
                                    SELECT
										day_number + 1,
                                        bonus + 50
									FROM bonus_growth
                                    WHERE day_number < 5
								)
SELECT
	*
FROM bonus_growth;

-- 6 CTE for average unit price per product and return those above 300.
WITH avg_unit_price AS (
							SELECT
								product_name,
								AVG(unit_price) AS avg_price
							FROM intermediate_sales_data
								GROUP BY product_name
)
SELECT
	*
FROM avg_unit_price
	WHERE avg_price > 300;

-- 7 CTE for total sales per salesperson, return those with > 15 sales.
WITH count_salesperson AS (
								SELECT
									COUNT(*) AS sales_count,
                                    salesperson
								FROM intermediate_sales_data
									GROUP BY salesperson
							)
SELECT
	*
FROM count_salesperson
	WHERE sales_count > 15;
    
-- 8 Use CTE to list all products sold in both East and West.
WITH in_both_regions AS (
				SELECT
					product_name,
                    region
				FROM intermediate_sales_data
					WHERE region IN('East', 'West')
                    GROUP BY product_name, region
			)
SELECT
	product_name
FROM in_both_regions
	GROUP BY product_name
    HAVING COUNT(DISTINCT region) = 2;

-- 9 Find category-wise max quantity sales using CTE.
WITH category_wise AS (
				SELECT
					product_category,
					quantity
				FROM intermediate_sales_data
			)
SELECT
	product_category,
	MAX(quantity) AS max_quantity
FROM category_wise
	GROUP BY product_category;

-- 10 Identify products with consistent sales using CTE and window avg.
--------------- TO DO ------------

-- 11 Use a CTE to list products sold only by one salesperson.
WITH counting_salesperson AS (
				SELECT
					product_name,
                    COUNT(DISTINCT salesperson) AS cnt_salesperson
				FROM intermediate_sales_data
					GROUP BY product_name
			)
SELECT
	product_name
FROM counting_salesperson
	WHERE cnt_salesperson = 1;

-- 12 Create a CTE to compute total sales by month.
WITH sales_by_month AS (
				SELECT
					SUM(total_amount),
					EXTRACT(MONTH FROM sale_date) AS month_extracted
				FROM intermediate_sales_data
					GROUP BY month_extracted
			)
SELECT
	*
FROM sales_by_month
	ORDER BY month_extracted;
	
-- 13 With CTE, calculate region-wise quantity totals and average.
WITH region_wise AS (
				SELECT
					region,
                    SUM(quantity) AS quantity_total,
                    AVG(quantity) AS quantity_avg
				FROM intermediate_sales_data
					GROUP BY region
			)
SELECT
	*
FROM region_wise;

-- 14 CTE to find the most recent sale for each product.
WITH most_recent_sale AS (
							SELECT
								product_name,
                                MAX(sale_date) AS recent_sale_date
							FROM intermediate_sales_data
								GROUP BY product_name
						)
SELECT 
	* 
FROM most_recent_sale
	ORDER BY recent_sale_date;