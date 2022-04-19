INSERT INTO main
(slip_id,cash_register_no,employee_no
,sales_tax_rate,subtotal_8
,subtotal_10,shop_id,sales_id)
VALUES (00000001,1,1,8,210,403,1,1);

INSERT INTO shop
(shop_id,shop_name,shop_number,shop_address)
VALUES(1,'日本橋店','03-111-2222','日本橋1-1-1');

INSERT INTO sales
(sales_id,date,sum_price,product_id)
VALUES(1,'2022/4/1  19:00:00',669,1);

INSERT INTO product
(product_id,product_name,product_price
,discount_amount,consumption_tax)
VALUES(1,'いろはす天然水',100,-10,7);