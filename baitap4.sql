SELECT *
FROM subject
WHERE credit = (SELECT MAX(credit) FROM subject);

SELECT *
FROM subject
WHERE id IN (
    SELECT subject_id
    FROM mark
    WHERE mark = (SELECT MAX(mark) FROM mark)
);

SELECT s.id, s.name, s.birthday, s.gender, s.email, s.class_id,
       AVG(m.mark) AS diem_trung_binh
FROM student s
JOIN mark m ON s.id = m.student_id
GROUP BY s.id, s.name, s.birthday, s.gender, s.email, s.class_id
ORDER BY diem_trung_binh DESC;

