USE student_management;
SELECT 
    *
FROM
    student
WHERE
    student.StudentName LIKE 'h%';
SELECT 
    *
FROM
    class
WHERE
    StartDate LIKE '%-12-%';
SELECT 
    *
FROM
    subject
WHERE
    3 <= Credit AND Credit <= 5;
set sql_safe_updates=0;
UPDATE student 
SET 
    ClassId = 2
WHERE
    studentName LIKE '%Hung%';
set sql_safe_updates=1;
SELECT 
    StudentName, SubName, Mark
FROM
    student
        JOIN
    subject ON student.status = subject.status
        JOIN
    mark ON subject.subId = mark.subId
ORDER BY mark desc;