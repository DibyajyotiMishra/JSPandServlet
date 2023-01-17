<%-- 
    Document   : op.jsp
    Created on : 17-Jan-2023, 3:45:02 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            
            //fetch the two numbers.
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));
        
            int result = num1/num2;
        %>
        
        <h1>Result is:  <%= result %>.</h1>
    </body>
</html>
