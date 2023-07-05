package com.example.finalexam.model;

public class Classroom {
    private int classId;
    private String classroom;

    public Classroom() {
    }

    public Classroom(int classId, String classroom) {
        this.classId = classId;
        this.classroom = classroom;
    }

    public int getClassId() {
        return classId;
    }

    public void setClassId(int classId) {
        this.classId = classId;
    }

    public String getClassroom() {
        return classroom;
    }

    public void setClassroom(String classroom) {
        this.classroom = classroom;
    }
}
