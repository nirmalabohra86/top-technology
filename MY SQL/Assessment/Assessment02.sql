drop database salesDB;
-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS SalesDB;

-- Step 2: Use the Database
USE SalesDB;

-- Step 3: Create Sales Table
CREATE TABLE IF NOT EXISTS sales (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    sale_amount DECIMAL(10, 2),
    sale_date DATE
);

-- Step 4: Insert 30 rows of sample data
INSERT INTO sales VALUES
(1, 'Laptop', 'Electronics', 1500.50, '2023-01-05'),
(2, 'T-Shirt', 'Clothing', 20.20, '2023-01-08'),
(3, 'Smartphone', 'Electronics', 800.75, '2023-01-12'),
(4, 'Jeans', 'Clothing', 55.40, '2023-01-18'),
(5, 'Headphones', 'Electronics', 90.90, '2023-02-05'),
(6, 'Sweater', 'Clothing', 35.60, '2023-02-08'),
(7, 'Tablet', 'Electronics', 300.45, '2023-03-10'),
(8, 'Shoes', 'Clothing', 65.30, '2023-03-15'),
(9, 'Digital Camera', 'Electronics', 450.20, '2023-04-02'),
(10, 'Watch', 'Clothing', 120.90, '2023-04-05'),
(11, 'Printer', 'Electronics', 250.00, '2023-05-01'),
(12, 'Backpack', 'Clothing', 45.20, '2023-05-05'),
(13, 'Digital Watch', 'Electronics', 120.60, '2023-05-10'),
(14, 'Sunglasses', 'Clothing', 30.30, '2023-06-02'),
(15, 'External Hard Drive', 'Electronics', 80.90, '2023-06-08'),
(16, 'Dress', 'Clothing', 65.60, '2023-06-15'),
(17, 'Fitness Tracker', 'Electronics', 90.25, '2023-07-01'),
(18, 'Handbag', 'Clothing', 55.40, '2023-07-05'),
(19, 'Wireless Mouse', 'Electronics', 25.60, '2023-07-10'),
(20, 'Hat', 'Clothing', 15.30, '2023-08-02'),
(21, 'Desktop Computer', 'Electronics', 1200.75, '2023-08-10'),
(22, 'Jacket', 'Clothing', 75.20, '2023-09-05'),
(23, 'Bluetooth Speaker', 'Electronics', 70.80, '2023-09-10'),
(24, 'Shorts', 'Clothing', 35.90, '2023-09-15'),
(25, 'E-reader', 'Electronics', 110.60, '2023-10-01'),
(26, 'Scarf', 'Clothing', 22.40, '2023-10-05'),
(27, 'Gaming Mouse', 'Electronics', 45.25, '2023-10-10'),
(28, 'Polo Shirt', 'Clothing', 28.40, '2023-11-01'),
(29, 'Wireless Keyboard', 'Electronics', 60.20, '2023-11-05'),
(30, 'Socks', 'Clothing', 8.90, '2023-11-10');

-- Step 6: Insert 30 more rows of sample data
INSERT INTO sales VALUES
(31, 'Smart TV', 'Electronics', 800.00, '2023-12-01'),
(32, 'Winter Boots', 'Clothing', 95.20, '2023-12-05'),
(33, 'Coffee Maker', 'Electronics', 60.60, '2023-12-10'),
(34, 'Gloves', 'Clothing', 18.30, '2024-01-02'),
(35, 'Digital Scale', 'Electronics', 35.90, '2024-01-08'),
(36, 'Hoodie', 'Clothing', 50.60, '2024-01-15'),
(37, 'Wireless Earbuds', 'Electronics', 75.25, '2024-02-01'),
(38, 'Umbrella', 'Clothing', 12.40, '2024-02-05'),
(39, 'Blender', 'Electronics', 120.60, '2024-02-10'),
(40, 'Belt', 'Clothing', 22.90, '2024-03-02'),
(41, 'Air Purifier', 'Electronics', 200.75, '2024-03-08'),
(42, 'Denim Jacket', 'Clothing', 65.20, '2024-03-15'),
(43, 'Fitness Watch', 'Electronics', 90.80, '2024-04-01'),
(44, 'Baseball Cap', 'Clothing', 18.90, '2024-04-05'),
(45, 'Electric Toothbrush', 'Electronics', 50.60, '2024-04-10'),
(46, 'Pajamas', 'Clothing', 40.40, '2024-05-01'),
(47, 'Portable Charger', 'Electronics', 30.25, '2024-05-05'),
(48, 'Sun Hat', 'Clothing', 15.40, '2024-05-10'),
(49, 'Robot Vacuum', 'Electronics', 300.60, '2024-06-02'),
(50, 'Swim Trunks', 'Clothing', 28.90, '2024-06-08'),
(51, 'Projector', 'Electronics', 400.75, '2024-06-15'),
(52, 'Summer Dress', 'Clothing', 45.20, '2024-07-01'),
(53, 'Wireless Headphones', 'Electronics', 120.80, '2024-07-05'),
(54, 'Sunglasses', 'Clothing', 22.90, '2024-07-10'),
(55, 'Digital Camera', 'Electronics', 150.60, '2024-08-02'),
(56, 'Casual Shoes', 'Clothing', 55.40, '2024-08-10'),
(57, 'Air Fryer', 'Electronics', 90.25, '2024-09-01'),
(58, 'Tennis Shoes', 'Clothing', 75.20, '2024-09-05'),
(59, 'Smart Thermostat', 'Electronics', 120.60, '2024-09-10'),
(60, 'Sweatpants','Clothing',35.90,'2024-09-15');
select * from sales; 

-- 1-	What is the total sales amount for each category?
select category , sum(sale_amount) from sales
group by category;


-- 2-	Which categories have more than 10 sales?
select category, count(sale_id) from sales
group by category
having count(sale_id)>10;


-- 3-	What is the maximum sale amount in each category?

select category , max(sale_amount) from sales
group by category;

-- 4-	Which categories have an average sale amount below 50?
select category, avg(sale_amount) from sales
group by category
having avg(sale_amount)<50;

-- 5-	How many sales does each product have?
select product_name , count(sale_amount) from sales
group by product_name;

-- 6-	Which products have more than 5 sales?
select product_name, count(sale_id) from sales
group by product_name
having count(sale_id)>5;

-- 7-	What is the average sale amount for products with more than 2 sales?
select product_name, avg(sale_amount) from sales
group by product_name
having avg(sale_amount)>2;

-- 8-	Which products have the highest sale amount above 100?
select product_name, max(sale_amount) from sales
group by product_name
having max(sale_amount)>100;
-- 9-	Which product has the highest total sales amount?
select product_name, max(sale_amount) from sales
group by product_name;

-- 10-	Which categories have a total sales amount above 800?
select category ,sum(sale_amount) from sales
group by category
having sum(sale_amount)>800;

-- 11-	What is the average sale amount for each month?
select month(sale_date), avg(sale_amount) from sales
group by month(sale_date);

-- 12-	What are the products with the highest sale amount in each category?

select product_name, max(sale_amount), category from sales
group by category, product_name;

-- 13-	How many sales occurred for each month?

select month(sale_date), sum(sale_amount) from sales
group by month(sale_date);
-- 14-	In which months are there more than 5 sales?

select month(sale_date), count(sale_amount) from sales
group by month(sale_date)
having count(sale_amount)>5;
-- 15-	What is the average sale amount for each product category in months with more than 3 sales?

select avg(sale_amount), month(sale_date), product_name from sales
group by product_name, month(sale_date)
having count(sale_id)>3;

-- 16-	Which products have more than 1 sale in every recorded month?
select product_name, month(sale_date), count(sale_id) from sales
group by product_name,month(sale_date)
having count(sale_id)>1;

-- 17-	What is the month with the lowest total sales amount?
select month(sale_date), sum(sale_amount) from sales
group by month(sale_date)
order by sum(sale_amount)
limit 1;

-- 18-	Which products have sale amounts that never go below 50?
select product_name, count(sale_amount) from sales
group by product_name
having count(sale_amount)<50;
-- 19-	Which category has the highest total sales amount in each month?
select category , sum(sale_amount), month(sale_date) from sales
group by month(sale_date), category
order by sum(sale_amount) desc;

-- 20-	Which products have sale amounts above the average sale amount across all products?

select product_name,sum(sale_amount),avg(sale_amount) from sales
group by product_name
having sum(sale_amount)>avg(sale_amount);

-- 21-	Which products have sale amounts below the average sale amount across all products?
select product_name,sum(sale_amount),avg(sale_amount) from sales
group by product_name
having sum(sale_amount)<avg(sale_amount);

-- 22-	Which categories have at least one sale above 200?
select category from sales
where sale_amount>200
group by category;


-- 23-	Which products have more than 3 consecutive months of sales?
select product_name from sales
group by product_name
having count(distinct month(sale_date))>3;

-- 24-	Which categories have an increasing total sales amount across months?


-- 25-	In which months is there a 20% increase in total sales amount compared to the previous month?

SELECT month(sale_date) AS month, (MAX(SUM(sale_amount)) - MIN(SUM(sale_amount))) / MIN(SUM(sale_amount)) AS sales_increase_percentage
FROM sales
group by month(sale_date)
having sales_increase_percentage > 0.20;

-- 26-	Which products have more than 2 sales below 30 in any month?
SELECT product_name
FROM sales
WHERE sale_amount < 30
GROUP BY product_name, MONTH(sale_date)
HAVING COUNT(*) > 2;

-- 27-	Which categories have sales in every recorded month?
SELECT category
FROM (
    SELECT DISTINCT category, MONTH(sale_date) AS month
    FROM sales
) AS distinct_categories
GROUP BY category
HAVING COUNT(distinct_categories.month) = (SELECT COUNT(DISTINCT MONTH(sale_date)) FROM sales);


-- 28-	Which products have sales in every category?
SELECT product_name
FROM (
    SELECT DISTINCT product_name, category
    FROM sales
) AS distinct_products
GROUP BY product_name
HAVING COUNT(distinct_products.category) = (SELECT COUNT(DISTINCT category) FROM sales);

-- 29-	Which categories have more than 2 sales below 50 and more than 1 sale above 100?
SELECT category
FROM sales
GROUP BY category
HAVING SUM(sale_amount < 50) > 2 AND SUM(sale_amount > 100) > 1;

-- 30-	Which products have the same sale amount in different cate
SELECT product_name, sale_amount, COUNT(DISTINCT category) AS distinct_categories
FROM sales
GROUP BY product_name, sale_amount
HAVING COUNT(DISTINCT category)> 1;