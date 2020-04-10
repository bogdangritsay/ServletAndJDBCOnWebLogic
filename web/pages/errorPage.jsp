<%--
  Created by IntelliJ IDEA.
  User: Bogdan
  Date: 10.04.2020
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page isErrorPage="true" %>
<html>
<head>
    <title>Error</title>
</head>
<body>
    <%= exception.getStackTrace().toString()%>
    <% exception.printStackTrace();%>
</body>
</html>
