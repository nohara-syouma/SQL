CREATE INDEX ind_major_name ON major(major_name);

CREATE INDEX ind_student_name ON student(student_name)

CREATE INDEX ind_student_name2 ON student(grade,student_name);

CREATE VIEW v_student AS
SELECT student_id,student_name, hometown, major_name 
FROM student s
INNER JOIN major m
ON s.major_id = m.major_id
WHERE hometown != '東京';

CREATE MATERIALIZED VIEW mv_student AS
SELECT student_id,student_name, hometown, major_name
FROM student s
INNER JOIN major m
ON s.major_id = m.major_id
WHERE hometown != '東京';