SELECT stdCount.Course_name, StdCount.Students, HighMrk.HighestMarks
 FROM ( 
SELECT Course_name, Count (Student.Student_ID) AS Students
FROM Course
JOIN Person ON Course.Course_ID = Person.Course_ID
JOIN Student ON Person.Student_ID = Student.Student_ID
GROUP BY Course_name
) StdCount
JOIN (
SELECT Course_name, MAX(Highest_marks) AS HighestMarks
FROM Course
JOIN Person ON Course.Course_ID = Person.Course_ID
JOIN Student ON Person.Student_ID = Student.Student_ID
JOIN ModPerson ON Person.Person_ID = ModPerson. Person_ID
JOIN Module ON ModPerson.Module_ID = Module.Module_ID
GROUP BY Course_name
) HighMrk
ON StdCount.Course_name = HighMrk.Course_name;
