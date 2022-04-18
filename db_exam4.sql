1. インデックスの作成

CREATE INDEX ind_major_name ON major(major_name);

CREATE INDEX ind_student_name ON student(student_name)

CREATE INDEX ind_student_name2 ON student(grade,student_name);

2. ビューの作成
CREATE VIEW v_student AS
SELECT student_id,student_name, hometown, major_name 
FROM student s
INNER JOIN major m
ON s.major_id = m.major_id
WHERE hometown != '東京';


3. マテリアルズド・ビュー
CREATE MATERIALIZED VIEW mv_student AS
SELECT student_id,student_name, hometown, major_name
FROM student s
INNER JOIN major m
ON s.major_id = m.major_id
WHERE hometown != '東京';

4. ファンクション

CREATE OR REPLACE FUNCTION a(b 	DECIMAL)
 RETURNS integer
 LANGUAGE plpgsql
 AS $function$
begin
    return b * 1.1;
end;
 $function$;

select sales_id,order_date,customer_id,amount,a(amount) カラム名なし
from sales;


5シーケンス
CREATE SEQUENCE users
 START WITH     101
 INCREMENT BY   1
 MAXVALUE 1000;

 --シーケンス更新
SELECT SETVAL ('users', '102');

