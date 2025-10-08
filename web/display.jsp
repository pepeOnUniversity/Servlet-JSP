<%-- 
    Document   : display
    Created on : Oct 8, 2025, 3:41:05 PM
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

        <!--use JSP-->
        <%
            String name = request.getAttribute("name").toString();
            out.println("Using JSP to get name:  " + name);
        %>
        <br> 
        <br> 
        <br> 
        Using JTSL to get name: 
        <!-- use JSTL -->
        ${name}
    </body>
</html>
