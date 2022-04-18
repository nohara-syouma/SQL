--DB_演習問題３


CREATE TABLE book (
id INT PRIMARY KEY
, name VARCHAR(20)
,price  INT
, date date
,publisher_id INT
,author_id INT
);



INSERT INTO book (id,name,price,date,publisher_id,
author_id)
VALUES 
(1001,'ネコのひみつ',600,'2018/1/1',101,101),
(1002,'犬にたかられる人',600,'2020/4/1',101,101),
(1003,'星の歌',1100,'2015/5/2',102,102),
(1004,'凹凸',750,'2012/3/4',102,103),
(1005,'こころ',3850,'2019/2/18',102,104),
(1006,'教師',800,'2005/12/12',101,104),
(1007,'欠けない月はない',1800,'1992/7/7',101,105),
(1008,'明けない夜もある',2530,'2001/9/4',102,105);


CREATE TABLE publisher (
id INT PRIMARY KEY
, name VARCHAR(20)
);



INSERT INTO publisher (id,name)
VALUES (101,'テクノ出版'),
(102,'Axiz文庫');

CREATE TABLE author (
id INT PRIMARY KEY
, name VARCHAR(20)
);


INSERT INTO author (id,name)
VALUES (101,'阿句 静'),
(102,'山田太郎'),
(103,'鈴木次郎'),
(104,'手久野 子亜'),
(105,'坂田 三郎');