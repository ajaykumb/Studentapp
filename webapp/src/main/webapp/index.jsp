<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head><title>Student Quiz</title></head>
<body>
    <h2>Enter Your Name to Start the Quiz</h2>
    <form action="quiz.jsp" method="post">
        <input type="text" name="studentName" required>
        <input type="submit" value="Start Quiz">
    </form>
</body>
</html>
