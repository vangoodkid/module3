 -- cau1
 select * 
 from student as s
 where s.name like 'h%';
 
 -- cau2 
SELECT *
FROM class AS c
WHERE MONTH(start_time) = 12;

-- cau3
SELECT *
FROM subject
WHERE credit BETWEEN 3 AND 5;


-- cau4 
SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET class_id = 2
WHERE name LIKE '%Hung%';

SET SQL_SAFE_UPDATES = 0;
 -- cau5
 SELECT s.name AS StudentName, sb.name AS SubName, m.mark
FROM mark m
JOIN student s ON m.student_id = s.id
JOIN subject sb ON m.subject_id = sb.id
ORDER BY m.mark DESC, s.name ASC;