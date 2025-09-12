<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String studentName = request.getParameter("studentName");
    session.setAttribute("studentName", studentName);
%>
<html>
<head><title>Quiz Page</title></head>
<body>
    <h2>Welcome, <%= studentName %>! Answer the questions:</h2>
    <form action="QuizServlet" method="post">
        <p>1. What is the capital of India?</p>
        <input type="radio" name="q1" value="Delhi"> Delhi<br>
        <input type="radio" name="q1" value="Mumbai"> Mumbai<br>

        <p>2. 2 + 2 = ?</p>
        <input type="radio" name="q2" value="3"> 3<br>
        <input type="radio" name="q2" value="4"> 4<br>

        <input type="submit" value="Submit Answers">
    </form>
</body>
</html>
