package com.example.task02_id10044;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "TranslateServlet", value = "/translate")
public class TranslateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String text = request.getParameter("text");
        String result = "";
        switch (text) {
            case "hello":
                result = "xin chào";
                break;
            case "cat":
                result = "mèo";
                break;
            case "dog":
                result = "chó";
                break;
        }

        PrintWriter writer = response.getWriter();
        writer.println("<html> <p>Result: " + result + "</p></html>");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
