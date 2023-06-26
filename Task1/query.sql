

update students SET passed = 1 where students.name IN (SELECT   name  
FROM exams GROUP BY exams.name HAVING SUM(exams.score) >= 36 ) and students.group in (2,3);

SELECT count(name), students.group from students  where name in ( 
SELECT students.name from students
JOIN exams ON students.name = exams.name WHERE exams.year=2021 and exams.period=2 
and exams.score>=4 ) group by students.group; 


SELECT name, score, MAX(year), MAX(period)
FROM exams
GROUP BY exam, name
