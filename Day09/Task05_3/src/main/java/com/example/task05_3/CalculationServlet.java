package com.example.task05_3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculationServlet", value = "/calculate")
public class CalculationServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String description = request.getParameter("description");
        float price = Float.parseFloat(request.getParameter("price"));
        float discount = Float.parseFloat(request.getParameter("discount"));

        PrintWriter writer = response.getWriter();
        writer.println("<html><p>");
        writer.printf("Discount Amount: %.2f </p><br>", price*discount/100);
        writer.printf("<p>Discount Price: %.2f </p></html>", price - price*discount/100);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
