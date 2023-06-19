use student_management;
SELECT 
    *
FROM
    subject
WHERE
    credit = (SELECT 
            MAX(credit)
        FROM
            subject)
GROUP BY SubId;



SELECT 
    *
FROM
    subject
        JOIN
    mark ON subject.SubId = Mark.SubId
WHERE
    mark.Mark = (SELECT 
            MAX(Mark)
        FROM
            mark);


SELECT 
    student.StudentName, AVG(mark.mark) AS point_avg
FROM
    student
        JOIN
    mark ON student.StudentId = Mark.StudentId
GROUP BY student.StudentName
