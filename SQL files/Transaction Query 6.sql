SELECT P_name AS Instructor, Post.Post
FROM Post
JOIN Teacher ON Post.Post_ID = Teacher.Post_ID
JOIN Person ON Teacher.Teacher_ID = Person.Teacher_ID
WHERE Post.Post LIKE 'Course Leader';
