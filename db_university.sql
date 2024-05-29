esercizio 1

SELECT * 
FROM `students` 
WHERE date_of_birth LIKE "1990%";


esercizio 2

SELECT * 
FROM `courses` 
WHERE cfu > 10;


esercizio 3

SELECT * 
FROM `students` 
WHERE TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) > 30;


esercizio 4

SELECT *
FROM `courses`
WHERE period LIKE 'I%' AND year LIKE '1%';


esercizio 5

SELECT *
FROM `exams`
WHERE hour > '14:00:00' AND date = '2020-06-20';


esercizio 6

SELECT *
FROM `degrees`
WHERE `level` LIKE '%magistrale%';


esercizio 7

SELECT *
FROM departments
WHERE id LIKE id;


esercizio 8

SELECT * 
FROM `teachers` 
WHERE `phone` IS NULL


esercizio 9

INSERT INTO `students` (degree_id, name, surname, date_of_birth, fiscal_code, enrolment_date, registration_number, email)
VALUES (FLOOR(1 + (RAND() * (SELECT COUNT(*) FROM degrees))), 'Daniele', 'Baggiano', '1998-01-28', 'BGGDNL98A28B036W', '2018-09-10', '619369', 'danielebaggiano@gmail.com');


esercizio 10

UPDATE teachers
SET office_number = '126'
WHERE name = 'Pietro' AND surname = 'Rizzo';


esercizio 11

DELETE FROM students
WHERE name = 'Daniele'
AND surname = 'Baggiano'
AND date_of_birth = '1998-01-28'
AND email = 'danielebaggiano@gmail.com';