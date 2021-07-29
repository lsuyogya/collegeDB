SELECT Module_name, COUNT(Teacher.Teacher_ID) AS "No_of_Instructors" 
FROM Module
JOIN ModPerson ON Module.Module_ID = ModPerson.Module_ID
JOIN Person ON ModPerson.Person_ID = Person.Person_ID
JOIN Teacher ON Person.Teacher_ID = Teacher.Teacher_ID
HAVING COUNT(Teacher.Teacher_ID) > 1 
GROUP BY Module_name
ORDER BY COUNT(Teacher.Teacher_ID);
