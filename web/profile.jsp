<%@ page import="com.website.entities.User" %><%--
  Created by IntelliJ IDEA.
  User: vaish
  Date: 03-Oct-21
  Time: 9:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page errorPage="error_page.jsp" %>
<%

  User user = (User)session.getAttribute("currentUser");

  if (user == null){
      response.sendRedirect("login_page.jsp");
  }

%>

<html>
<head>
    <title>Profile Page</title>
</head>
<body>

<%= user.getName() %>
<br>
<%= user.getEmail() %>
<br>
<%= user.getAddress() %>


</body>
</html>
