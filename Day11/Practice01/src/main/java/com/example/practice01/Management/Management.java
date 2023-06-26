package com.example.practice01.Management;

import com.example.practice01.Model.Employee;

import java.util.ArrayList;
import java.util.List;

public class Management {
    public static List<Employee> employees = new ArrayList<>();

    public static boolean register(Employee employee) {
        if (!isExistedUsername(employee.getUsername())) {
            employees.add(employee);
            return true;
        }
        return false;
    }

    public static boolean isExistedUsername(String username) {
        for (Employee e :
                employees) {
            if (e.getUsername().equals(username))
                return true;
        }
        return false;
    }

    public static Employee login (Employee employee) {
        for (Employee e :
                employees) {
            if (employee.getUsername().equals(e.getUsername()))
                if (employee.getPassword().equals(e.getPassword()))
                    return e;
                else
                    return null;
        }
        return null;
    }
}
