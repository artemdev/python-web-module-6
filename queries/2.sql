-- Знайти студента із найвищим середнім балом з певного предмета.
SELECT students.name, AVG(grades.grade) as avg_grade
FROM students
JOIN grades ON students.id = grades.student_id
JOIN subjects ON subjects.id = grades.subject_id
WHERE subjects.name = 'main'
GROUP BY students.id
ORDER BY avg_grade DESC
LIMIT 1