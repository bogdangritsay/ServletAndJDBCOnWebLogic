package test.dao;

import test.model.Student;

import java.util.List;

public interface DAOConnection {
    void connect();
    void disconnect();
    List<Student> selectAllStudents();
}
