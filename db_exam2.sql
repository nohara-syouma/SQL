select *from student
where grade = 1 and hometown = '東京'
order by student_id;

select *from student
where grade = 1 or student_name LIKE '%本'
order by student_id desc;

select major_id,max(grade) max
from student
group by major_id
order by major_id ;

select hometown,count(hometown)
from student
group by hometown
having count(hometown)>=2
order by hometown;

select s.student_name,m.major_name
from student s
inner join major m
on s.major_id = m.major_id
order by m.major_name,s.student_name;

select s.student_id,s.student_name,s.hometown,m.major_name
from student s
inner join major m
on s.major_id = m.major_id
where s.hometown != '東京'
order by m.major_name;


select student_id, student_name, grade
from student
where major_id = 
(select major_id from major where major_name = '英文学');


select student_id, student_name, major_id
from student
where major_id IN 
(select major_id from student 
group by major_id
having count(major_id)>=3)
order by major_id;