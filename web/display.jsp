<%-- 
    Document   : display
    Created on : Oct 8, 2025, 3:41:05 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- taglib -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- begin & and is optional -->
        <c:forEach var="student" items="${listStudents}" begin="0" end="1">
            <h3>${student}</h3>
        </c:forEach>
    </body>
</html>
