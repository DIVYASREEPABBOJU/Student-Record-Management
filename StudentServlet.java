package com.student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/student")
public class StudentServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    static ArrayList<Student> students = new ArrayList<>();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("students", students);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        if ("add".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            int age = Integer.parseInt(request.getParameter("age"));
            String dept = request.getParameter("department");

            students.add(new Student(id, name, age, dept));
        }

        if ("delete".equals(action)) {
            int id = Integer.parseInt(request.getParameter("id"));
            students.removeIf(s -> s.id == id);
        }

        response.sendRedirect("student");
    }
}


