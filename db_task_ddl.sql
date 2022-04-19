CREATE TABLE main(
Slip_id INT PRIMARY KEY,
cash_register_no INT,
employee_no INT,
sales_tax_rate INT,
subtotal_8 INT,
subtotal_10 INT,
shop_id INT,
sales_id INT
);

CREATE TABLE shop(
shop_id INT,
shop_name VARCHAR(40),
shop_number VARCHAR(40),
shop_address VARCHAR(40)
);

CREATE TABLE sales(
sales_id INT,
date date,
sum_price INT,
product_id INT
);

CREATE TABLE product(
product_id INT,
Product_name VARCHAR(50),
Product_price INT,
Discount_amount INT,
consumption_tax INT
);