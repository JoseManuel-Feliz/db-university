-- |1 
SELECT `students`.`name` AS `students_name`,`students`.`surname`,`degrees`.`name` AS `degrees_name`, `courses`.`name` AS `courses_name` 
FROM `courses` 
JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
 JOIN `students` ON `students`.`degree_id`= `degrees`.`id`
 WHERE `degrees`.`name` = "Corso di Laurea in Economia";

-- |2
SELECT * 
FROM `departments` 
JOIN `degrees` ON `degrees`.`department_id` = `departments`.`id`
 JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id`
 WHERE `departments`.`name` = "Dipartimento di Neuroscienze" AND `degrees`.`level` = "magistrale";

-- |3
SELECT * 
FROM `teachers` 
JOIN `course_teacher` ON `course_teacher`.`teacher_id` = `teachers`.`id`
JOIN `courses` ON `courses`.`id` = `course_teacher`.`course_id`
WHERE `teachers`.`id` = "44";

-- |4
SELECT `students`.*,`degrees`.`name` AS `degrees_name`, `courses`.`name` AS `courses_name` 
FROM `courses` 
JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
 JOIN `students` ON `students`.`degree_id`= `degrees`.`id`  
ORDER BY `students`.`name` ASC, `students`.`surname`;

-- |5
SELECT *
FROM `teachers` 
JOIN `course_teacher` ON `course_teacher`.`teacher_id` = `teachers`.`id`
JOIN `courses` ON `courses`.`id` = `course_teacher`.`course_id`
JOIN `degrees` ON `degrees`.`id` = `courses`.`degree_id`;

-- |6
SELECT * 
FROM `departments` 
JOIN `degrees` ON `degrees`.`department_id` = `departments`.`id`
 JOIN `courses` ON `courses`.`degree_id` = `degrees`.`id`
 JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
 JOIN `teachers` ON `teachers`.`id` = `course_teacher`.`teacher_id`
 WHERE `departments`.`name` = "Dipartimento di Matematica";