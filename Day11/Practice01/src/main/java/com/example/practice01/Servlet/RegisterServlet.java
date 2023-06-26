package com.example.practice01.Servlet;

import com.example.practice01.Management.Management;
import com.example.practice01.Model.Employee;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegisterServlet", value = "/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");
        if (Management.register(new Employee(username, password))) {
            writer.println("<h2>Register successfully</h2>");
        } else
            writer.println("<h2>Error: Duplicate username</h2>");
        writer.println("</html>");
    }
}
