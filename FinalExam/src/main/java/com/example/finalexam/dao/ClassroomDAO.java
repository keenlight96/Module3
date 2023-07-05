package com.example.finalexam.dao;

import com.example.finalexam.model.Classroom;
import com.example.finalexam.model.Student;

import javax.xml.transform.Result;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class ClassroomDAO {
    public static Connection connection = ConnectMySQL.getConnection();
    public static int selectClassIdByClassroom(String classroom) {
        String sql = "select * from Classroom where classroom = ?";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, classroom);
            ResultSet resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {
                return resultSet.getInt("classId");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }

    public static List<Classroom> selectAllClassrooms() {
        List<Classroom> classrooms = new ArrayList<>();
        String sql = "select * from Classroom";
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()) {
                int classId = resultSet.getInt("classId");
                String classroom = resultSet.getString("classroom");

                classrooms.add(new Classroom(classId, classroom));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return classrooms;
    }
}
