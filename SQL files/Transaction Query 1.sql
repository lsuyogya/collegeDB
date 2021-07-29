SELECT P_name, Course_name, Fees,
CASE 
		WHEN Course.Course_name LIKE 'Computing' THEN (Fees – 0.1*Fees)
		ELSE Fees
END AS "Fees (After Discount)"
FROM Student
JOIN Person ON Student.Student_ID = Person.Student_ID
JOIN Course ON Person.Course_ID = Course.Course_ID;
