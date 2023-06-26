package com.example.task02_id10068.Management;

import com.example.task02_id10068.Model.Product;

import java.util.ArrayList;
import java.util.List;

public class Management {
    public static List<Product> products = new ArrayList<>();
    static {
        products.add(new Product(1, "Apple", 3));
        products.add(new Product(2, "Pear", 2.5));
        products.add(new Product(3, "Watermelon", 6.3));
    }

    public static void create(Product product) {
        products.add(product);
    }

    public static Product getById(int id) {
        for (Product e :
                products) {
            if (e.getId() == id)
                return e;
        }
        return null;
    }

    public static void delete(Product product) {
        products.remove(product);
    }
}
