SELECT Student.Student_ID AS "ID", P_name AS "Student studying 'Networking'" 
	FROM Specification 
	JOIN PERSON ON Specification.Specification_ID = Person.Specification_ID
	JOIN Student ON Person.Student_ID = Student.Student_ID
	WHERE Specification_name LIKE 'Networking';
