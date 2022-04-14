create table sales_old (
sales_id INT PRIMARY KEY,
order_date	DATE,
customer_id INT NOT NULL REFERENCES customer(customer_id),
amount DECIMAL);

insert into sales_old(sales_id,order_date,customer_id,amount)
values (6,'2018/09/02',2,20000)
,(7,'2018/09/02',1,5000)
,(8,'2018/09/02',3,6000)
,(9,'2018/09/05',1,3000);

insert into sales
select * from sales_old;

drop table  sales_old;

select sales_id,order_date
,case when order_date >= '2018/10/01' then '〇'
else NULL
end is_old
from sales;


SELECT customer_id ||':' || customer_name AS  customer_id_name
FROM customer;

SELECT sales_id, order_date, customer_id, amount
FROM sales 
where customer_id = 1
ORDER BY order_date desc 
LIMIT 2;

