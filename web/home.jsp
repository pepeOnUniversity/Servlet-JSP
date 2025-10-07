<%-- 
    Document   : home.jsp
    Created on : Oct 7, 2025, 4:37:32 PM
    Author     : ADMIN
--%>

<!--link to error.jsp-->
<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<!--        url: http://localhost:9999/DemoApp/home.jsp 
        but display is file erorr.jsp-->
        <%
            int number = 10/0;
        %>
    </body>
</html>
