<%-- 
    Document   : jstl1Core
    Created on : 13 May 2024, 10:50:57 PM
    Author     : zira
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using JSTL tag library </title>
        <style>
            p{
                color: palevioletred;
            }
        </style>
    </head>
    <body>
        <h1> Use JSTL’s features.</h1>
        <c:set var="message" value="Welcome to CSSF3107 - Web Programming courses..!" />
        <p> <c:out value="${message}"/> </p>
    </body>
</html>



