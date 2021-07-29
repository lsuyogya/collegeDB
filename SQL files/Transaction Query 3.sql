SELECT P_name, Enrollment_Date, ROUND(((Sysdate-Enrollment_date)/7), 0) AS "Weeks"
FROM Student 
JOIN Person ON Student.Student_ID = Person.Student_ID;
