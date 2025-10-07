<%-- 
    Document   : home.jsp
    Created on : Oct 7, 2025, 4:37:32 PM
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
        <%
            try{
                        int number = 9/0;

            }
            catch(Exception e){
                out.println(e.getMessage());
            }
        %>
    </body>
</html>
