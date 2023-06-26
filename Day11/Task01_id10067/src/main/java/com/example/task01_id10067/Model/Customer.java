package com.example.task01_id10067.Model;

public class Customer {
    public static int countId = 0;
    private int id;
    private String name;
    private int age;
    private String phoneNumber;
    private String address;

    public Customer() {
    }

    public Customer(String name, int age, String phoneNumber, String address) {
        id = ++countId;
        this.name = name;
        this.age = age;
        this.phoneNumber = phoneNumber;
        this.address = address;
    }

    public static int getCountId() {
        return countId;
    }

    public static void setCountId(int countId) {
        Customer.countId = countId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
}
