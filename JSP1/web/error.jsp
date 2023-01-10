<%-- 
    Document   : error
    Created on : 10-Jan-2023, 5:29:53 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <!-- Error Page Config -->
<%@page isErrorPage="true" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
    </head>
    <body>
        <div style="padding: 20px; background: #03203C; color: #F4BE2C;">
            <h1>Sorry! Something went wrong...</h1>
            
            <p>Error: <%= exception %> </p>
        </div>
    </body>
</html>
