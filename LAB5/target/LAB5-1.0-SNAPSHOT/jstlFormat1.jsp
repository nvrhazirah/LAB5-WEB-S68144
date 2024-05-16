<%-- 
    Document   : jstlFormat1
    Created on : 14 May 2024, 10:23:41 PM
    Author     : zira
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            p{
                color:red;
            }
        </style>
    </head>
    <body>
        <h1>Using JSTL formatting tag for formatting</h1>

    <c:set var="total" value="2880.4638"/>
    
<p>Number to be formatted is <c:out value="${total}" /></p>
<p>Formatting number as currency with currency code :<fmt:formatNumber type="currency" currencyCode="MYR" value="${total}"/></p>
<p>Formatting number to the nearest 2 integer digit : <fmt:formatNumber type="number" maxIntegerDigits="2" value="${total}"/></p>
<p>Formatting number by grouping : <fmt:formatNumber type="number" groupingUsed="true" value="${total}"/></p>
<p>Formatting number to the 3 decimal places : <fmt:formatNumber type="number" maxFractionDigits="3" value="${total}"/></p>
<p>Formatting number by % : <fmt:formatNumber type="percent" groupingUsed="true" value="${total}"/></p>

</body>
</html>

