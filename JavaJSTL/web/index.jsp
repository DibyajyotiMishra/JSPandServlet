<%-- 
    Document   : index
    Created on : 30-Jan-2023, 11:36:47 AM
    Author     : dibyajyotimishra
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL Example | DibyajyotiMishra</title>
    </head>
    <body>
        <h1>This is a JSTL example.</h1>

        <a href="test.jsp" target="_blank">Go to test page</a>
        <!--1. Out Tag -->
        <!--2. Set Tag--> 
        <!--3. remove tag-->
        <c:set var="i" value="0" scope="application"></c:set>
        <h2><c:out value="${i}"></c:out></h2>
        <%--<c:remove var="i"></c:remove>--%>
        <h2><c:out value="${i}">Default Value : 0</c:out></h2>


            <hr>

            <!--4.Conditionals ( if tag )-->
        <c:if test="${i == 23}">
            <h1>i is <c:out value="${i}"></c:out> and condition is true</h1>
        </c:if>

        <!--5. choose, when, otherwise -> Switch Statement alternative-->
        <c:choose>
            <c:when test="${i > 0}">
                <h1>Case 1</h1>
                <h2>Positive Number</h2>
            </c:when>
            <c:when test="${i < 0}">
                <h1>Case 2</h1>
                <h2>Negative Number</h2>
            </c:when>
            <c:otherwise>
                <h1>Default Case</h1>
                <h2>title</h2>
            </c:otherwise>
        </c:choose>

        <hr>

        <!--6. Looping Tags (forEach)-->
        <c:forEach var="j" begin="1" end="10">
            <h3>Hello World! <c:out value="${j}"></c:out></h3>
        </c:forEach> 

        <!--7. Redirect, URL, and Param tag-->
        <c:url var="url" value="https:google.com">
            <c:param name="query" value="Dibyajyoti Mishra"></c:param>
        </c:url>
        
        <h5><c:out value="${url}"></c:out></h5>
        
        <%--<c:redirect url="${url}"></c:redirect>--%>
    </body>
</html>
