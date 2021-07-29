SELECT P_name AS "Instructor name", Salary
From Person
JOIN Teacher ON Person.Teacher_ID = Teacher.Teacher_ID
JOIN Post ON Teacher.Post_ID = Post.Post_ID
WHERE ((UPPER(P_name) LIKE '%S%') OR (UPPER(P_name) LIKE 'S%') OR (UPPER(P_name) LIKE '%S')) AND Salary > 50000
ORDER BY Salary;
