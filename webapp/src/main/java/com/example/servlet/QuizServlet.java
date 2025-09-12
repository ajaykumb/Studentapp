package com.example.servlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class QuizServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String studentName = (String) session.getAttribute("studentName");
        String q1 = request.getParameter("q1");
        String q2 = request.getParameter("q2");

        int score = 0;
        if ("Delhi".equals(q1)) score++;
        if ("4".equals(q2)) score++;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                "jdbc:mysql://mysql-db:3306/quizdb", "root", "rootpassword");

            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO results(student_name, score) VALUES(?, ?)");
            ps.setString(1, studentName);
            ps.setInt(2, score);
            ps.executeUpdate();

            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("score", score);
        RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
        rd.forward(request, response);
    }
}
