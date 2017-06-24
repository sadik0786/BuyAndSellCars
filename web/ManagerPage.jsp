
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin page</title>
        <style>
            .button{
                background-color: blue;
                border: 2px solid green;
                color: white;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 20px;
                border-radius:16px;
                margin-top: 50px;
                -webkit-transition-duration: 0.4s;
                transition-duration: 0.4s;
            }
            .button:hover{
                background-color: whitesmoke;
                color: blue;
            }
            .button1{
                background-color: blue;
                border: 2px;
                color: white;
                padding: 20px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 24px;
                margin: 250px;
                margin-left: 500px;
                border-radius: 40%;
            -webkit-transition-duration: 0.4s;
                transition-duration: 0.4s;
            }
            .button1:hover{
                background-color: whitesmoke;
                color: blue;    
            }
        </style>
    </head>
    <body background="images/snap6.jpg">
        <h1 align="center">HELLO MANAGER WELCOME TO OUR PAGE</h1>
        <div class="container">
            <a href="AddCar.jsp" class="button">Add  Car</a>
            <a href="ModifyPage.jsp" class="button"> Modify Car</a>
            <a href="" class="button">Add New Upcoming Cars </a>
            <a href="OrderModifyPage.jsp" class="button">Cancel Order</a>
            
      </div>
            
            
    </body>
</html>
