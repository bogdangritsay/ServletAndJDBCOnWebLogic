<%@ page import="test.model.Student" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Students</title>
</head>
<body>
<div>
    Many Students:
    <% List<Student> studentList = (List<Student>) session.getAttribute("studentList"); %>
    <% for (Student student : studentList)  {%>
    <br>
    <input type="checkbox" name="students" id="<%= student.getId()%>" value="<%= student.getId() %>" > <%= student.getName()%><br>
    <% } %>
</div>
</body>
</html>
