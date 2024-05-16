<%-- 
    Document   : processUser
    Created on : 14 May 2024, 3:31:05 PM
    Author     : zira
--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <h2>Retrieve info using c:param & display it using c:out</h2>

    <body>
        

<p><c:out value = "First Name: ${param.nm1}"/></p>

<p><c:out value= "Surname : ${param.nm2}"/></p>


<p><c:out value= "Gender :${param.gender}"/></p>


<p><c:out value="Type of user :${param.typeUser}"/></p>


<p><c:out value= "Language : ${param.language}"/></p>



</body>
</html>


