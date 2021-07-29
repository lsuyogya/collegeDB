SELECT Student.Student_ID AS "ID", P_name AS "Student_name", Mobile_no, Home_ph_no, Fax_no
  	FROM Student 
JOIN Person ON Student.Student_ID = Person.Student_ID
JOIN Address_person ON Person.Person_ID = Address_Person.Person_ID
	JOIN Address ON Address_person.Address_ID = Address.Address_ID
	JOIN Home_info ON Address.Home_no = Home_info.Home_no
	ORDER BY ID ASC;
