-- Список курсів, які певному студенту читає певний викладач.
SELECT teachers.name, AVG(grades.grade) as average_grade
FROM teachers
JOIN subjects ON teachers.id = subjects.teacher_id
JOIN grades ON grades.subject_id = subjects.id
WHERE teachers.name = 'Sandra Horn'
GROUP BY teachers.name


