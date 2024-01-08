-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`date_of_birth`) AS `registration_year`, COUNT(*) AS `number_of_students`
FROM `students`
GROUP BY YEAR(`date_of_birth`)
ORDER BY `registration_year`;

-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio


-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT `es`.`exam_id`, AVG(`es`.`vote`) AS `average_vote`
FROM `exam_student` `es`
GROUP BY `es`.`exam_id`;

-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `departments`.`id`, `departments`.`name`, COUNT(`degrees`.`id`) AS `number_of_degrees`
FROM `degrees`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
GROUP BY `departments`.`id`, `departments`.`name`;
