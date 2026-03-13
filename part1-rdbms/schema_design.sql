##CREATE TABLE statements -

##CUSTOMERS Table :
CREATE TABLE customers (
customer_id VARCHAR(10) PRIMARY KEY,
customer_name VARCHAR(100) NOT NULL,
customer_email VARCHAR(100),
customer_city VARCHAR(50)
);

##PRODUCTS Table :

CREATE TABLE products (
product_id VARCHAR(10) PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50),
unit_price DECIMAL(10,2) NOT NULL
);

##SALES_REPS Table :

CREATE TABLE sales_reps (
sales_rep_id VARCHAR(10) PRIMARY KEY,
sales_rep_name VARCHAR(100) NOT NULL,
sales_rep_email VARCHAR(100),
office_address VARCHAR(200)
);

##ORDERS Table :

CREATE TABLE orders (
order_id VARCHAR(10) PRIMARY KEY,
order_date DATE NOT NULL,
customer_id VARCHAR(10) NOT NULL,
sales_rep_id VARCHAR(10) NOT NULL,

FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
FOREIGN KEY (sales_rep_id) REFERENCES sales_reps(sales_rep_id)
);

##ORDER_ITEMS Table :

CREATE TABLE order_items (
order_id VARCHAR(10),
product_id VARCHAR(10),
quantity INT NOT NULL,

PRIMARY KEY (order_id, product_id),

FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

##INSERT statements - 
  
##CUSTOMERS Table :
  
INSERT INTO customers VALUES
('C001','Rahul Sharma','rahul@email.com','Mumbai'),
('C002','Anita Mehta','anita@email.com','Delhi'),
('C003','Vikram Shah','vikram@email.com','Pune'),
('C004','Sneha Patil','sneha@email.com','Mumbai'),
('C005','Rohan Gupta','rohan@email.com','Bangalore');

##PRODUCTS Table : 

INSERT INTO products VALUES
('P101','Laptop','Electronics',55000),
('P102','Smartphone','Electronics',25000),
('P103','Office Chair','Furniture',7000),
('P104','Desk Lamp','Furniture',1500),
('P105','Wireless Mouse','Electronics',800);

##SALES_REPS Table :

INSERT INTO sales_reps VALUES
('S001','Amit Joshi','amit.joshi@email.com','Mumbai Office'),
('S002','Priya Nair','priya.nair@email.com','Delhi Office'),
('S003','Karan Malhotra','karan.m@email.com','Pune Office'),
('S004','Neha Kapoor','neha.k@email.com','Bangalore Office'),
('S005','Rakesh Singh','rakesh.s@email.com','Mumbai Office');

##ORDERS Table :

INSERT INTO orders VALUES
('O1001','2024-01-10','C001','S001'),
('O1002','2024-01-12','C002','S002'),
('O1003','2024-01-15','C003','S003'),
('O1004','2024-01-18','C004','S004'),
('O1005','2024-01-20','C005','S005');

##ORDER_ITEMS Table :

INSERT INTO order_items VALUES
('O1001','P101',1),
('O1001','P105',2),
('O1002','P102',1),
('O1003','P103',1),
('O1004','P104',3),
('O1005','P105',2);


## Final Normalized Structure (3NF)

Customers(customer_id, customer_name, customer_email, customer_city)
Products(product_id, product_name, category, unit_price)
Sales_Reps(sales_rep_id, sales_rep_name, sales_rep_email, office_address)
Orders(order_id, order_date, customer_id, sales_rep_id)
Order_Items(order_id, product_id, quantity)


