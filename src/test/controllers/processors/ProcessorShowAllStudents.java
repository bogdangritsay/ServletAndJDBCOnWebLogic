package test.controllers.processors;

import test.dao.OracleDAOConnection;
import test.model.ProcessorResult;
import test.model.Student;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

public class ProcessorShowAllStudents extends Processor {
    public ProcessorShowAllStudents() {
        action = "showAllStudents";
    }

    @Override
    public ProcessorResult getResult(HttpServletRequest request) {

        OracleDAOConnection connection = OracleDAOConnection.getInstance();
        List<Student> studentList = connection.selectAllStudents();

        request.getSession().setAttribute("studentList", studentList);
        return new ProcessorResult("/main","/pages/showAllStudents.jsp", true);
    }
}
