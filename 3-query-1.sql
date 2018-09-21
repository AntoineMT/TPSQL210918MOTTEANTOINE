SELECT
`s`.`firstname`,
`s`.`lastname`,
`y`.`label` AS `annee`

FROM `student` `s`
LEFT JOIN `enrolment` `e` ON `e`.`id_student` = `s`.`id`
LEFT JOIN `year` `y` ON `y`.`id` = `e`.`id_year`        
WHERE ('2017-07-01' BETWEEN `e`.`from` and `e`.`to`) or `y`.`label` IS NULL
ORDER BY `s`.`lastname` ASC;