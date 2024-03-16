-- Знайти середній бал у групах з певного предмета.
SELECT subjects.name as subject, groups.name as group_name, AVG(grades.grade) as avg_grade
FROM groups
JOIN students ON groups.id = students.group_id
JOIN grades ON students.id = grades.student_id
JOIN subjects ON subjects.id = grades.subject_id 
WHERE subjects.name  = 'conference'
GROUP BY groups.id
ORDER BY avg_grade DESC