SELECT P_name AS "Teacher Name", Country, Province, City, Street, Address.Home_no, Address_type, Mobile_no, Home_ph_no, Fax_no  
	FROM Teacher 
	JOIN Person ON Teacher.Teacher_ID = Person.Teacher_ID 
	JOIN Address_person ON Person.Person_ID = Address_person.Person_ID
	JOIN Address ON Address_person.Address_ID = Address.Address_ID
	JOIN Home_info ON Address.Home_no = Home_info.Home_no
WHERE SUBSTR (P_name, 1, (INSTR(P_name, ' ', 1, 1) -1) ) LIKE '%a'
ORDER BY P_name ASC;
