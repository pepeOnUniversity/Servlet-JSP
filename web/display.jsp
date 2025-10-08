<%-- 
    Document   : display
    Created on : Oct 8, 2025, 3:41:05 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- taglib -->
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource var="db" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver" 
                           url="jdbc:sqlserver://localhost:1433;databaseName=DB_Profile;encrypt=false;trustServerCertificate=true"
                           user="sa" password="123456"/>
        <!-- variable ${db} contains connect with DB_Profile -->

        <!-- execute query -->
        <!-- rs return ResultSet -->
        <sql:query var="rs" dataSource="${db}">select * from Students</sql:query>

        <c:forEach var="student" items="${rs.rows}">
            <h3>${student.id}, ${student.name}, ${student.phone}</h3>
        </c:forEach>
    </body>
</html>
