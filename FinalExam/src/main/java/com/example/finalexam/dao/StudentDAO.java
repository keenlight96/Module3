package com.example.finalexam.dao;

import com.example.finalexam.model.Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class StudentDAO {
    public static Connection connection = ConnectMySQL.getConnection();
    public static void insertStudent(Student student) {
        String sql = "insert into Student(name, email, dateOfBirth, address, phoneNumber, classId) values (?,?,?,?,?,?)";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            preparedStatement.setString(3, String.valueOf(student.getDateOfBirth()));
            preparedStatement.setString(4, student.getAddress());
            preparedStatement.setString(5, student.getPhoneNumber());
            preparedStatement.setInt(6, ClassroomDAO.selectClassIdByClassroom(student.getClassroom()));
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void updateStudent(Student student) {
        String sql = "update Student set name = ?, email = ?, dateOfBirth = ?, address = ?," +
                "phoneNumber = ?, classId = ? where studentId = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, student.getName());
            preparedStatement.setString(2, student.getEmail());
            preparedStatement.setString(3, String.valueOf(student.getDateOfBirth()));
            preparedStatement.setString(4, student.getAddress());
            preparedStatement.setString(5, student.getPhoneNumber());
            preparedStatement.setInt(6, ClassroomDAO.selectClassIdByClassroom(student.getClassroom()));
            preparedStatement.setInt(7, student.getStudentId());
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void deleteStudentByStudentId(int studentId) {
        String sql = "delete from Student where studentId = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, studentId);
            preparedStatement.execute();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static List<Student> selectAllStudents() {
        List<Student> students = new ArrayList<>();
        String sql = "select * from Student join Classroom on Student.classId = Classroom.classId";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int studentId = resultSet.getInt("studentId");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                LocalDate dateOfBirth = LocalDate.parse(resultSet.getString("dateOfBirth"));
                String address = resultSet.getString("address");
                String phoneNumber = resultSet.getString("phoneNumber");
                String classroom = resultSet.getString("classroom");

                students.add(new Student(studentId, name, email, dateOfBirth, address, phoneNumber, classroom));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }

    public static Student selectStudentByStudentId(int studentId) {
        String sql = "select * from Student join Classroom on Student.classId = Classroom.classId where StudentId = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, studentId);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                LocalDate dateOfBirth = LocalDate.parse(resultSet.getString("dateOfBirth"));
                String address = resultSet.getString("address");
                String phoneNumber = resultSet.getString("phoneNumber");
                String classroom = resultSet.getString("classroom");

                return new Student(studentId, name, email, dateOfBirth, address, phoneNumber, classroom);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public static List<Student> selectStudentsBySearchName(String searchName) {
        List<Student> students = new ArrayList<>();
        String sql = "select * from Student join Classroom on Student.classId = Classroom.classId " +
                "where Student.name like concat('%',?,'%')";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, searchName);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int studentId = resultSet.getInt("studentId");
                System.out.println("id = " + studentId);
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                LocalDate dateOfBirth = LocalDate.parse(resultSet.getString("dateOfBirth"));
                String address = resultSet.getString("address");
                String phoneNumber = resultSet.getString("phoneNumber");
                String classroom = resultSet.getString("classroom");

                students.add(new Student(studentId, name, email, dateOfBirth, address, phoneNumber, classroom));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return students;
    }
}
