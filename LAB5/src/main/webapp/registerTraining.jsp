<%-- 
    Document   : registerTraining
    Created on : 8 May 2024, 4:06:09 PM
    Author     : zira
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
            
        
        <h1><i>Register IT Traning</i></h1>
        
        <fieldset>
            <legend>Training Registration</legend>
            <form action="processTraining.jsp">
            <tabel>
                
                <label for="IcNo">IC No </label>
                <input type="text" id="ic_no" name="icno"  placeholder="E.g. 990503-09-5052">
                
                <br><br>    
            <label>Name</label>
            <input type="text" id="nama" name="name"  placeholder="Enter your name">
            <br><br>

            <label>Type of Training</label>
            <select name ="type" id ="tot">

              <option value = "1" > C++ training</option>
                <option value = "2" > Java for beginner</option>
                <option value = "3" > HTML5 </option>
                <option value = "4" > Java EEE</option>
                <option value = "5" > Android Programming</option>
                
                </select>
            <br><br>

            <label>No of Pax</label>
            <input type="text" id="nopax" name="pax"  placeholder="No of pax">
            <br><br>
            
            <label>Student</label>
       
            <input type="radio" id="yes" name="student" value="1"/>
            <label for="yes">Yes</label>

            <input type="radio" id="no" name="student" value="0"/>
            <label for="no">No</label>

            <br><br>

            <p>
                <input type="submit" id="btnSubmit" value="Submit"/>
                <input type="reset" id="btnCancel" value="Cancel"/>

            </p>
        </form>

        </fieldset>
    </body>
    &copy;2024-Nurhazirah
</html>