SELECT P_name AS "Instructor", Fax_no 
	FROM Module 
	JOIN ModPerson ON Module.Module_ID = ModPerson.Module_ID
	JOIN Person ON ModPerson.Person_ID = Person.Person_ID
	JOIN Teacher ON Person.Teacher_ID = Teacher.Teacher_ID
	JOIN Address_person ON Person.Person_ID = Address_person.Person_ID
	JOIN Address ON Address_person.Address_ID = Address.Address_ID
	JOIN Home_info ON Address.Home_no = Home_info.Home_no
	WHERE Module_name LIKE 'Database' AND Fax_no IS NOT NULL;
