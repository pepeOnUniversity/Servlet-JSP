<%-- 
    Document   : error.jsp
    Created on : Oct 7, 2025, 4:38:47 PM
    Author     : ADMIN
--%>

<!--add attribute isErrorPage="true" -> enable variable exception-->
<%@page contentType="text/html" pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>This is content in file error.jsp</h2>
        <!--use variable exception-->
        <p>
        <%= exception %>
        <br>
        <br>
        <%= exception.getMessage()%>
        </p>
        
        <style>
            p {
                color:red;
            }
        </style>
    </body>
</html>
