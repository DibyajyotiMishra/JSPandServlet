<%-- 
    Document   : page2
    Created on : 21-Jan-2023, 10:35:23 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Contents of Page 2!</h1>
        
        <%
          // Redirecting code.
          response.sendRedirect("page3.jsp");
        %>
    </body>
</html>
