<%-- 
    Document   : strings
    Created on : 30-Jan-2023, 8:07:37 PM
    Author     : dibyajyotimishra
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>String Functions</title>
    </head>
    <body>
        <h1 style="text-decoration: underline">This is a Functions JSP!</h1>
        <c:set var="name" value="Dibyajyoti Mishra"></c:set>
        <h5><c:out value="${name}"></c:out></h5>
        
        <h4>Length of the value is <c:out value="${fn:length(name)}"></c:out></h4>
        <c:out value="${fn:contains(name,'a')}"></c:out>
    </body>
</html>
