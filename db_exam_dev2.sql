1. CREATE

create table sales_old (
sales_id INT PRIMARY KEY,
order_date	DATE,
customer_id INT NOT NULL REFERENCES customer(customer_id),
amount DECIMAL);


2. INSERT

insert into sales_old(sales_id,order_date,customer_id,amount)
values (6,'2018/09/02',2,20000)
,(7,'2018/09/02',1,5000)
,(8,'2018/09/02',3,6000)
,(9,'2018/09/05',1,3000);


3. INSERT、SELECT

insert into sales
select * from sales_old;


4. DROP

drop table  sales_old;


5. CASE WHEN、別名

select sales_id,order_date
,case when order_date >= '2018/10/01' then '〇'
else NULL
end is_old
from sales;


6. 文字列結合、別名

SELECT customer_id ||':' || customer_name AS  customer_id_name
FROM customer;

7. LIMIT

SELECT sales_id, order_date, customer_id, amount
FROM sales 
where customer_id = 1
ORDER BY order_date desc 
LIMIT 2;

8. GROUP BY、MIN、SUM、サブクエリ、別名

select c.customer_id, c.customer_name, TRUNC(avg(amount)) avg_amount
from sales s
INNER  join customer c
on s.customer_id = c.customer_id
group by c.customer_id
order by c.customer_id;


9. GROUP BY、JOIN、AVG、TRUNC、別名

select sales_id,order_date, customer_id,amount
from sales
where amount = (SELECT max(amount) FROM sales 
WHERE order_date BETWEEN '2018/09/01' and  '2018/09/30' LIMIT 1);