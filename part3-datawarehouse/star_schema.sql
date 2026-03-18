CREATE DATABASE retail_dw;

USE retail_dw;

-- Dimension Table: Date
CREATE TABLE dim_date (
date_id INT PRIMARY KEY,
full_date DATE,
month INT,
year INT
);

-- Dimension Table: Store
CREATE TABLE dim_store (
store_id INT PRIMARY KEY,
store_name VARCHAR(100),
store_city VARCHAR(50)
);

-- Dimension Table: Product
CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
sales_id INT PRIMARY KEY,
date_id INT,
store_id INT,
product_id INT,
quantity INT,
revenue DECIMAL(10,2),

FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Date dimension (cleaned YYYY-MM-DD)

INSERT INTO dim_date VALUES
(1,'2023-08-29',8,2023),
(2,'2023-12-12',12,2023),
(3,'2023-02-05',2,2023),
(4,'2023-03-15',3,2023),
(5,'2023-06-20',6,2023);

-- Store dimension

INSERT INTO dim_store VALUES
(1,'Chennai Anna','Chennai'),
(2,'Delhi Central','Delhi'),
(3,'Mumbai Mall','Mumbai');

-- Product dimension (category standardized)

INSERT INTO dim_product VALUES
(1,'Laptop','Electronics'),
(2,'T-Shirt','Clothing'),
(3,'Rice','Groceries');

INSERT INTO fact_sales VALUES
(1,1,1,1,3,147788.34),
(2,2,1,2,11,255487.32),
(3,3,1,3,20,974067.80),
(4,4,2,1,2,98525.56),
(5,5,2,2,4,93000.48),
(6,1,3,3,15,730550.85),
(7,2,3,1,1,49262.78),
(8,3,2,2,6,139356.72),
(9,4,1,3,10,487033.90),
(10,5,3,2,5,116130.60);

