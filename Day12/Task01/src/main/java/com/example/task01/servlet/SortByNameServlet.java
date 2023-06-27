package com.example.task01.servlet;

import com.example.task01.dao.UserDAO;
import com.example.task01.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/sortByName")
public class SortByNameServlet extends HttpServlet {
    UserDAO userDAO = new UserDAO();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> users = userDAO.sortByName();
        req.setAttribute("users", users);
        RequestDispatcher dispatcher = req.getRequestDispatcher("/view.jsp");
        dispatcher.forward(req, resp);
    }
}
