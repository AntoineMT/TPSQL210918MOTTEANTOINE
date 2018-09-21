SELECT `s`.`firstname`, `s`.`lastname`, ROUND(AVG(`as`.`grade`),2) AS `moyenne`
FROM `assessment` `as`
LEFT JOIN `student` `s` ON `s`.`id` = `as`.`id_student`
LEFT JOIN `enrolment` `e` ON `e`.`id_student` = `s`.`id`
LEFT JOIN year y ON `y`.`id` = `e`.`id_year`
WHERE `y`.`id` IS NOT NULL
AND `y`.`id` = 2
group by (`s`.`id`)
ORDER BY `y`.`id` DESC;