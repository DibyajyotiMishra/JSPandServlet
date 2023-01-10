<%-- 
    Document   : error_handling
    Created on : 10-Jan-2023, 5:26:15 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Error handling example:</h1>
        <%! 
            int n1 = 0, n2 = 20;
        %>
        
        <% 
        int division = n2/n1;
        %>
        
        <h3> Division = <%= division %></h3>
    </body>
</html>
