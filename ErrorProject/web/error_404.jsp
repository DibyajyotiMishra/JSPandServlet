<%-- 
    Document   : error.jsp
    Created on : 17-Jan-2023, 3:53:02 PM
    Author     : dibyajyotimishra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page Not Found</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
        <div class="container p-10 text-center">
            <img src="./assets/404-error.png" class="img-fluid w-50 h-25" alt="alt"/>
            <h3 class="text-sm font-monospace">Page does not exist...</h3>
            <a href="index.html" class="btn btn-outline-warning">Go back home</a>
        </div>
    </body>
</html>
