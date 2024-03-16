---Знайти список курсів, які відвідує студент.
SELECT subjects.name FROM
subjects
JOIN grades ON grades.subject_id = subjects.id
JOIN students ON students.id = grades.student_id 
WHERE students.name  = 'Zachary Hahn'
GROUP BY subjects.name