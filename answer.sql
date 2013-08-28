 /* 01 */
 /*
SELECT *
FROM course

SELECT c.*,s.*
FROM course as c,consists as s
*/

/*
SELECT Course_No
FROM student;

SELECT DISTINCT Course_No
FROM student;
*/

/*
SELECT Student_No,Student_Name,Course_No
FROM student;
*/
/*
SELECT Student_No,Marks,Marks*1.1 as ScaledMarks
FROM result;
*/

/* 06 */
/*
SELECT Course_No,Student_Name
FROM student
ORDER BY Course_No DESC,Student_Name ASC;

*/
/*07*/
/*
SELECT Student_No,Marks,Marks*1.1 as ScaledMarks
FROM result
ORDER BY Marks*1.1 DESC;

SELECT Student_No,Marks,Marks*1.1 as ScaledMarks
FROM result
ORDER BY 3 DESC;


SELECT Student_No,Marks,Marks*1.1 as ScaledMarks
FROM result
ORDER BY ScaledMarks DESC;
*/
/*08*/
/*
SELECT Student_Name
FROM student
WHERE Year_Study = 1;

*/

/*09*/
/*
SELECT Student_No,Student_Name
FROM student
WHERE Year_Study = 1 AND Date_of_birth = "1988/01/17";

*/
/*10*/
/*
SELECT Student_No,Student_Name
FROM student
WHERE (Course_No = "C1" OR Course_No = "C2")  AND (Year_Study = 1 OR Year_Study = 2);


*/
/*
SELECT Student_No,Student_Name
FROM student
WHERE Course_No IN("C1","C2")  AND Year_Study IN(1,2) ;

*/
/*11*/
/*
SELECT Head
FROM department
WHERE Head LIKE "Dr.L.%" OR Head LIKE "Prof.L.%";
*/
/*12*/
/*
SELECT Student_Name
FROM student
WHERE Student_Name LIKE "_.Dias";

SELECT Student_Name
FROM student
WHERE Student_Name LIKE "%.Dias";

*/

/*13*/
/*
SELECT Student_Name
FROM student
WHERE Student_Name LIKE "%._i%";
*/
/*14*/
/*
SELECT Subject_No,Subject_Name
FROM subject
WHERE RIGHT(Subject_No,1)%2 <> 0;
*/
/* 15 */
/*
SELECT Student_Name
FROM student
WHERE Student_Name like '[A-L].%';
*/
/*16*/
/*
SELECT Student_Name
FROM student
WHERE Address = NULL
*/
/*17*/
/*
SELECT Student_Name
FROM student
WHERE Address IN ("Colombo","Galle","Kandy");
*/
/*18*/
/*
SELECT c.Course_No,s.*
FROM subject s,consists c
WHERE s.Subject_No = c.Subject_No;
*/

/*19*/
/*
SELECT  s.Student_No,s.Student_Name
FROM student AS s,course AS c
WHERE (s.Year_Study > c.Duration) AND (s.Course_No = c.Course_No);
*/
/*20*/
/*
SELECT s.Student_Name
FROM student AS s,course AS c
WHERE (s.Course_No = c.Course_No) AND (s.Year_Study NOT IN( c.Duration));
*/
/*
SELECT s.Student_Name
FROM student AS s,course AS c
WHERE (s.Course_No = c.Course_No) AND (s.Year_Study != c.Duration);
*/
/*21*/
/*
SELECT sub.Subject_Name,dept.Head
FROM Subject AS sub,Department AS dept,Consists AS con
WHERE sub.Subject_No = con.Subject_No AND sub.Dept_Name = dept.Dept_Name;

*/
/*22*/
/*
SELECT c1.Course_No
FROM Consists c1,Consists c2
WHERE (c1.Subject_No = c2.Subject_No) AND NOT(c1.Course_No = c2.Course_No);
*/

/*23*/
/*
SELECT COUNT(Student_No) AS Number_of_student
FROM student;
*/

/*24*/
/*
SELECT COUNT(DISTINCT Course_No) AS Number_of_Courses
FROM student

*/
/*
SELECT COUNT(*) AS Number_of_Courses
FROM (SELECT DISTINCT student.Course_No
	  FROM student) AS t;
*/

/*25*/
/*
SELECT  AVG (Marks)
FROM Result
WHERE Student_No = "ST103" AND Year_Exam = 1;
*/
/*26*/
/*
SELECT Student_No,Year_Exam,AVG(Marks) AS AverageMarks
FROM Result
GROUP BY Student_No,Year_Exam;
*/
/*27*/
/*
SELECT Year_Study,COUNT(Student_No) AS Number_of_student
FROM student
WHERE Date_of_birth  LIKE "1988%"
GROUP BY Year_Study
*/
/*
SELECT Year_Study,COUNT(Student_No) AS Number_of_student
FROM student
WHERE YEAR(Date_of_birth) ="1988"
GROUP BY Year_Study;
*/
/*28*/
/*
SELECT DISTINCT(Student_No),AVG(Marks) AS Average
FROM Result
GROUP BY Student_No
HAVING AVG(Marks) < 40;
*/
/*29*/
/*
SELECT Address, COUNT(Student_No) AS Number_of_Student
FROM student
WHERE Address IN("Kandy","Colombo","Galle")
GROUP BY Address;
*/
/*30*/
/*
SELECT Student_Name
FROM student
WHERE Student_No IN (SELECT Student_No
					 FROM Result
					 WHERE Subject_No = "SU04");
*/
/*31*/	
/*				 
SELECT Student_Name
FROM student
WHERE Course_No NOT IN (SELECT Course_No
						FROM Course
						WHERE Title = "Bio Science");
*/
/*32*/
/*
SELECT Student_Name
FROM student
WHERE Year_Study = (SELECT MAX(Year_Study)
					FROM student);
*/
/*33*/
/*
SELECT Student_Name
FROM student
WHERE Student_No IN (SELECT Student_No
					 FROM Result
					 WHERE Subject_No IN (SELECT Subject_No
										  FROM Subject
										  WHERE Dept_Name = "Mathematics"));
										  
*/
/*34*/
/*
SELECT Student_Name
FROM student s
WHERE EXISTS 
	(SELECT r.Subject_No                                                                                                                                                                                                                    
	FROM Result r
	WHERE s.Student_No = r.Student_No
	AND Subject_No = "SU04");

*/
/*
SELECT Student_Name
FROM student
WHERE Student_No IN (SELECT Student_No
					 FROM Result
					 WHERE Subject_No = "SU04");
					 
*/
/*35*/	
/*
SELECT c.Course_No
FROM Course AS c
WHERE NOT EXISTS( SELECT *
				  FROM student s
				  WHERE s.Course_No = c.Course_No);
				  
*/
/*36*/
/*
SELECT
FROM
*/
/*37*/
/*
SELECT Student_No,Subject_No,Year_Exam,Marks
FROM Result
WHERE Marks BETWEEN 50 AND 60 ;
*/
/*
SELECT Student_No,Subject_No,Year_Exam,Marks
FROM Result
WHERE Marks > 50 AND Marks <60 ;
*/
/*38*/
/*
SELECT Subject_No
FROM Subject
WHERE Dept_Name LIKE "Chemistry"
	UNION
SELECT Subject_No
FROM Consists
WHERE Course_No = "C2";
*/
/*39*/
/*
UPDATE student
SET Address = "Kalutura"
WHERE Student_No = "ST103";
*/
/*40*/
/*
UPDATE Result
SET Marks = Marks*1.1;
*/
/*41*/
/*
UPDATE Result
SET Marks = Marks+5
WHERE Marks BETWEEN 0 AND 25;
*/
/*42*/
/*
UPDATE Result
SET Marks = Marks+8
WHERE Marks BETWEEN 0 AND 24
UPDATE Result
SET Marks = Marks+7
WHERE Marks BETWEEN 30 AND 36
UPDATE Result
SET Marks = Marks+7
WHERE Marks BETWEEN 44 AND 54;
*/

/*43*/
/*
update Result
set Marks = Marks*1.1
where Subject_No IN 
		(select Subject_No
		from Subject
		where Dept_Name like "Mathematics");

*/




