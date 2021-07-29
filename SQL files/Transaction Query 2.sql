SELECT P_name, Mobile_no,
CASE 
		WHEN Home_ph_no IS NULL THEN 1234567890
		ELSE Home_ph_no
END AS "Contact details"
FROM Home_info
JOIN Address ON Home_info.Home_no = Address.Home_no
JOIN Address_person ON Address.Address_ID = Address_person.Address_ID
JOIN Person ON Address_person.Person_ID = Person.Person_ID;
