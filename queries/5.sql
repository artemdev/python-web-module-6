-- Знайти які курси читає певний викладач.
SELECT teachers.name as teacher, subjects.name as subject
FROM subjects
JOIN teachers ON subjects.teacher_id = teachers.id
WHERE teachers.name = 'Haley Lynch'