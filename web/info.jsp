<%-- 
    Document   : Info
    Created on : Sep 18, 2025, 1:30:40 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 style='background-color: yellow; color: red'>This page was created by JSP</h1>

        <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        out.println("<h1>" + username + "</h1>");
        out.println("<h1>" + password + "</h1>");
        %>


    </body>
</html>
