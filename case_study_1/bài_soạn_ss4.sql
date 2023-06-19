use ss2;
SELECT 
    class.name, COUNT(*) AS so_hoc_vien
FROM
    class
        JOIN
    student ON class.id = student.class_id
GROUP BY class.name;

SELECT 
    class.name, AVG(point) AS avg_point
FROM
    class
        JOIN
    student ON class.id = student.class_id
GROUP BY class.name;
select
  student.name,
  student.birthday,
  instructor.name,
  instructor.birthday
from 
class
join 
student
on class.id=student.class_id
join
instructor_class 
on class.id=instructor_class.class_id
join
instructor
on instructor_class.instructor_id=instructor.id;

select 
 student.name,
 student.point
 from
 student
 order by point desc
 limit 3;
 select
 student.name,
 student.point
 from
student 
 where point= (select max(point) from student)
 order by student.name asc