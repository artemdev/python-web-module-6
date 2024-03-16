-- Список курсів, які певному студенту читає певний викладач.
SELECT subjects.name as subject, teachers.name as teacher_name, students.name as student_name FROM
subjects
JOIN teachers ON teachers.id = subjects.teacher_id
JOIN grades ON grades.subject_id = subjects.id
JOIN students ON students.id = grades.student_id 
WHERE teachers.name = 'Jacob Wilson' and students.name = 'Michelle Thomas'
GROUP BY subjects.name