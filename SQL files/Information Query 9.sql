SELECT Module_name AS "Module", Class_name AS "Class"
From Class 
JOIN Module ON Class.Class_ID = Module.Class_ID
WHERE Class_name LIKE 'Arthur';
