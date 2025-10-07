<%-- 
    Document   : profile
    Created on : Oct 8, 2025, 5:50:38 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello Student!</h1>
        <%
            String dbUser = "sa";
            String dbPass = "123456";
            String dbUrl = "jdbc:sqlserver://localhost:1433;databaseName=DB_Profile;encrypt=true;trustServerCertificate=true";

            String sql = "select * from Students where id = 1";
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
            Statement st = con.createStatement();
            
            ResultSet rs = st.executeQuery(sql);
            
            rs.next();
        %>

        <h4>Rollno: <%= rs.getString(1)%></h4>
        <h4>Name:  <%= rs.getString(2)%> </h4>
        <h4>Address <%= rs.getString(3)%> </h4>
        <h4>Mark: <%= rs.getString(4)%> </h4>
        <h4>Phone: <%= rs.getString(5)%> </h4>
    </body>
</html>
