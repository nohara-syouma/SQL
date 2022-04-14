CREATE DATABASE axiz_exam_dev;

CREATE TABLE customer (
customer_id INT PRIMARY KEY
, customer_name VARCHAR(50)
);

CREATE TABLE sales (
sales_id INT PRIMARY KEY
, order_date DATE
,customer_id INT NOT NULL REFERENCES customer(customer_id)
,amount DECIMAL
);

insert into customer(customer_id,customer_name)
values (1,'田中'),(2,'鈴木'),(3,'田中'),(4,'田島');

insert into sales
values
(1,'2018/11/01',1,3000)
,(2,'2018/10/01',3,5000)
,(3,'2018/10/01',4,6000)
,(4,'2018/11/02',2,2000)
,(5,'2018/11/15',2, NULL);

select * from sales where amount<5000;

select * from sales where amount>=5000;

select *, (amount * 1.1) カラム名なし from sales;

SELECT *  FROM sales
WHERE amount IS NOT NULL;

SELECT *  FROM customer
WHERE customer_name NOT IN('田中');

UPDATE sales
  SET order_date = '2018/11/05'
WHERE customer_id = 4;


DELETE FROM sales
WHERE amount IS NULL;