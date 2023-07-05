package com.example.finalexam.servlet;

import com.example.finalexam.dao.ClassroomDAO;
import com.example.finalexam.dao.StudentDAO;
import com.example.finalexam.model.Classroom;
import com.example.finalexam.model.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

@WebServlet("/edit")
public class EditServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int studentId = Integer.parseInt(req.getParameter("studentId"));
        Student student = StudentDAO.selectStudentByStudentId(studentId);

        List<Classroom> classrooms = ClassroomDAO.selectAllClassrooms();

        req.setAttribute("student", student);
        req.setAttribute("classrooms", classrooms);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/edit.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int studentId = Integer.parseInt(req.getParameter("studentId"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        LocalDate dateOfBirth = LocalDate.parse(req.getParameter("dateOfBirth"));
        String address = req.getParameter("address");
        String phoneNumber = req.getParameter("phoneNumber");
        String classroom = req.getParameter("classroom");

        Student student = new Student(studentId, name, email, dateOfBirth, address, phoneNumber, classroom);
        StudentDAO.updateStudent(student);

        resp.sendRedirect("/home");
    }
}
