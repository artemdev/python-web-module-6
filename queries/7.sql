-- Знайти оцінки студентів у окремій групі з певного предмета.
SELECT groups.name as group_name, subjects.name as subject, students.name as student, grades.grade
FROM students
JOIN grades ON students.id = grades.student_id
JOIN groups ON students.group_id = groups.id
JOIN subjects ON subjects.id = grades.subject_id
WHERE groups.name = 'value' AND subjects.name = 'scientist'
