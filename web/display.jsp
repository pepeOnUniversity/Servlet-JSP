<%-- 
    Document   : display
    Created on : Oct 8, 2025, 3:41:05 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- taglib -->
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://localhost:1433;databaseName=DB_Profile"
                           user="sa" password="123456"/>

        <sql:query var="rs" dataSource="${db}">select * from Students</sql:query>

        <c:forEach var="student" items="${db.rows}">
            <c:out value="${student}"/>
        </c:forEach>
    </body>
</html>
