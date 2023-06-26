package com.example.task01_id10067.Management;

import com.example.task01_id10067.Model.Customer;

import java.util.ArrayList;
import java.util.List;

public class Management {
    public static List<Customer> customers = new ArrayList<>();

    static {
        customers.add(new Customer("Long", 27, "0968588109", "HN"));
        customers.add(new Customer("Duyên", 26, "0453534009", "HN"));
    }

    public static void create(Customer customer) {
        customers.add(customer);
    }

    public static void delete(int id) {
        customers.remove(findById(id));
    }


    public static Customer findById(int id) {
        for (Customer e :
                customers) {
            if (e.getId() == id)
                return e;
        }
        return null;
    }
}
