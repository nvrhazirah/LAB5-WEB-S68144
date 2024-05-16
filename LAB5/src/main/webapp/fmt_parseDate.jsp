<%-- 
    Document   : fmt_parseDate
    Created on : 15 May 2024, 2:46:05 PM
    Author     : zira
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix ="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>fmt:parseDate example</h1>
       <c:set var="dateTimeString" value="17-11-2015 11:48"/>
       <h4>
           dateTimeString:
           <c:out value ="${dateTimeString}"/>
       </h4>
       
       <fmt:parseDate value ="${dateTimeString}"
                       type="both" var="parsedDatetime" pattern="dd-MM-yyyy HH:mm"/>
       <p>
           The date time after parsing:
           <c:out value ="${parsedDatetime}"/>
       </p>
       
       </br>
       <p>
           Date only (dd/MM/yyyy ):
           <fmt:formatDate value ="${parsedDatetime}" pattern ="dd/MM/yyyy"/>
       
    </body>
</html>
