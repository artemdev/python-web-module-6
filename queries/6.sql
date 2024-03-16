-- Знайти список студентів у певній групі.
SELECT groups.name as group_name, students.name as student
FROM students
JOIN groups ON groups.id = students.group_id  
WHERE groups.name = 'much'