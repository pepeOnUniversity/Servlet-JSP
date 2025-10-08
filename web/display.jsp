<%-- 
    Document   : display
    Created on : Oct 8, 2025, 3:41:05 PM
    Author     : ADMIN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- c:set -->
        <c:set var="str" value="This is line was created by c:set"/>
        <!-- c:out -->
        <h1><c:out value="${str}"/></h1>
        <!-- fn:length() -->
        <h3 style="color:blue">The length of str: ${fn:length(str)}</h3>
        <!-- using fn:split() -->
        <h3><c:out value="This under block using fn:split()"/></h3>
        <c:forEach var="word" items="${fn:split(str, ' ')}">
            <c:out value="${word}"/>
            <br>
        </c:forEach>

        <!-- using fn:indexOf() -->
        <h3 style="color: red">The position of word "line" is : ${fn:indexOf(str, "line")}</h3>
        
        <!-- usinng contains & c:if -->
        <c:if test="${fn:contains(str, 'was')}">
            <h3 style="color:violet"><c:out value="This string has contains word 'was'"/></h3>
        </c:if>
    </body>
</html>
