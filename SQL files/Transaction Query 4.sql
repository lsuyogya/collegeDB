SELECT S1.Specification_name , P_name, Salary
  	FROM Teacher T1
  	JOIN Person ON T1.Teacher_ID = Person.Teacher_ID
  	JOIN Specification S1 ON Person.Specification_ID = S1.Specification_ID
  	JOIN Post ON T1.Post_ID = Post.Post_ID
  	WHERE Specification_name IN (
  		SELECT Specification_name
  		FROM Teacher T1
 		JOIN Person ON T1.Teacher_ID = Person.Teacher_ID
 		JOIN Specification S1 ON Person.Specification_ID = S1.Specification_ID
 		JOIN Post ON T1.Post_ID = Post.Post_ID
 		HAVING Count(Specification_name)>1
 		GROUP BY S1.Specification_name, Post.Post_ID
 	) AND Post.Post_ID IN (
		SELECT Post.Post_ID
  		FROM Teacher T1
 		JOIN Person ON T1.Teacher_ID = Person.Teacher_ID
 		JOIN Specification S1 ON Person.Specification_ID = S1.Specification_ID
 		JOIN Post ON T1.Post_ID = Post.Post_ID
 		HAVING Count(Specification_name)>1
 		GROUP BY S1.Specification_name, Post.Post_ID
)
 	ORDER BY Specification_name;
