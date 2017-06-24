<%-- 
    Document   : WelcomePage
    Created on : 22 Jun, 2017, 12:57:58 PM
    Author     : Sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <p>Welcome, <%=session.getAttribute("Admin")%> </p>
        
    </body>
</html>
