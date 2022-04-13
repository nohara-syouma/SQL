CREATE DATABASE db_exam;

\c db_exam

CREATE TABLE major (major_id INT PRIMARY KEY, major_name VARCHAR(50));



CREATE TABLE student (student_id INT PRIMARY KEY, student_name VARCHAR(50), grade INT, hometown VARCHAR(50), major_id INT NOT NULL REFERENCES major(major_id));


INSERT INTO major 
(major_id , major_name)
 VALUES (1, '英文学'),
        (1, '応用科学'),
        (1, '情報工学'),
        (1, '経済学'),
        (1, '国際文化');


INSERT INTO student
(student_id, student_name, grade, hometown, major_id)
VALUES (1, '山田', 1, '宮城', 1),
        (2, '田中', 1, '東京', 2),
        (3, '佐藤', 1, '東京', 3),
        (4, '鈴木', 2, '鹿児島', 1),
        (5, '高橋', 2, '北海道', 2),
        (6, '吉田', 2, '東京', 1),
        (7, '伊藤', 3, '鹿児島', 2),
        (8, '山本', 3, '神奈川', 3),
        (9, '森本', 4, '沖縄', 4),
        (10, '吉岡', 4, '神奈川', 5);


SELECT *  FROM student
WHERE grade = 1;


SELECT *  FROM student
WHERE hometown = '東京';

SELECT *  FROM major
WHERE major_name;


SELECT major_name FROM major;

update student set grade=3 where  student_id=10;

DELETE FROM student
WHERE student_id = 10;