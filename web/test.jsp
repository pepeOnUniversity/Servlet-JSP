<%-- 
    Document   : test
    Created on : Sep 21, 2025, 12:23:26 PM
    Author     : ADMIN
--%>

<!--directive: chỉ định-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!--it means import java.util.*;-->

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <!--declearation-->
        <!--code in declearation handle in nameFile_jsp() in file nameFile_jsp.jsp-->
        <%!
           int globalVariable = 100; 
        %>

        <!--code in scriplet & HTML will handle in _jspService() in file nameFile_jsp.jsp-->
        <h1>This is page was created by test.jsp</h1>

        <!--scriptlet-->
        <%
            //this is JAVA code, need ';'
            out.println("Hi, this block is in Above Scriplet");
            int n = 5;
        %>
        <br>
        <br>
        <%
            //scriplet can share variable for another
            out.println("Value n was declear in above Scripet is " + n); //print: 5
        %>
        <br><!-- comment -->
        <br><!-- comment -->
        <%
            out.println("Value globalVariable was declear in DECLEARATION is " + globalVariable);
        %>
        <br><!-- comment -->
        <br><!-- comment -->
        -----------------------------------------------
        <br><!-- comment -->
        <br><!-- comment -->
        Three line was write outside tags and block => Template Code       
        <br><!-- comment -->
        <br><!-- comment -->
        The globalVariable got by Expression Code
        <br><!-- comment -->
        <br><!-- comment -->
        Value globalVaribale is <%=globalVariable%>
    </body>
</html>
