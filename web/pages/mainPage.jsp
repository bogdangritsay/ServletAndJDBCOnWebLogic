<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="/pages/errorPage.jsp" %>
<html>
<head>
    <title>Main</title>
</head>
<body>
<div>Hello, <%= session.getAttribute("userName")%></div>
<br>
<div>
    <a href="/ServletProjectGroup2_war_exploded/test?action=logOut">Exit</a>
</div>
<div>
    <ul>
        <li><a href="/ServletProjectGroup2_war_exploded/test?action=showAllStudents">Students</a></li>
    </ul>
</div>

<div>
    <h3>Main part: </h3>
    <% String includedPage = (String) session.getAttribute("includedPage");%>
    <% if (!includedPage.isEmpty()) {  %>
    <jsp:include page="<%= includedPage %>"></jsp:include>
    <% }                              %>
</div>



</body>
</html>
