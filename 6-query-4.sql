SELECT 
s.firstname,
s.lastname,
y.label,    

case
when AVG(`as`.`grade`) >= 15 THEN 'A'
when AVG(`as`.`grade`) >= 10 THEN 'B'
when AVG(`as`.`grade`) >= 15 THEN 'C'
ELSE 'D'
end as note,

ROUND(AVG(`as`.`grade`), 2) AS moyenne

FROM student `s`
JOIN  assessment `as` ON s.id = `as`.id_student
JOIN enrolment e ON e.id_student = s.id
JOIN `year` `y` ON y.id = e.id_year
GROUP BY s.id, y.label, y.id 

ORDER BY moyenne DESC;