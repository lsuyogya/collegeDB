SELECT DISTINCT Specification_name AS "Specification under BIT course"
	FROM Specification
	JOIN Person ON Specification.Specification_ID = Person.Specification_ID 
	JOIN Course ON Person.Course_ID = Course.Course_ID
WHERE Course_name LIKE 'BIT';
