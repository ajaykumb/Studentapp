<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Result</title></head>
<body>
    <h2>Quiz Finished!</h2>
    <p>Student: <%= session.getAttribute("studentName") %></p>
    <p>Your Score: <%= request.getAttribute("score") %></p>
</body>
</html>
