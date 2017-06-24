<%-- 
    Document   : SignUpPage
    Created on : 13 march, 2017, 10:30:13 AM
    Author     : Sadik
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>sign up page</title>
        <link rel="stylesheet" type="text/css" href="cssstyle/SignUpPage.css">
         <link rel="stylesheet" href="css/bootstrap.min.css">
         <style>
      </style>
 
    </head>
    <body>
        <div class="container" style="padding-top:5px">
            <form class="signup" action="create.do" name="f1" method="post">
               
<div id="grad1" style="text-align:center;margin:auto;color:#888888;font-size:40px;font-weight:bold">
              Registration Page
                             </div>
        <label for="loginid" class="sr-only-focusable">Login Id :</label>
        <input type="text" name="loginid" class="form-control" placeholder="LOGIN ID" required autofocus>
        <label for="firstname" class="sr-only-focusable">First Name :</label>
        <input type="text" name="fname" class="form-control" placeholder="FIRST NAME" required autofocus>
        <label for="lastname" class="sr-only-focusable">Last Name :</label>
        <input type="text" name="lname"  class="form-control" placeholder="LAST NAME" required autofocus>
        <label for="inputEmail" class="sr-only-focusable">Email Id :</label>
        <input type="email" name="email"  class="form-control" placeholder="ENTER EMAIL" required autofocus>
        <label for="inputPassword" class="sr-only-focusable">Password :</label>
        <input type="password" name="pass"  class="form-control" placeholder="ENTER PASSWORD" required>
        <label for="inputGender"  class="sr-only-focusable">Gender :</label>
        <input type="radio" name="gender"  value="Male">MALE
        <input type="radio" name="gender"  value="Female">FEMALE<br>
        <label for="inputMobile" class="sr-only-focusable">Mobile No. :</label>
        <input type="text" name="mob" class="form-control" placeholder="MOBILE NO." required autofocus>
        <label for="inputLocation" class="sr-only-focusable">Location :</label>
        <input type="text" name="loca" class="form-control" placeholder="ENTER YOUR LOCATION" required autofocus>
        <label for="inputAddress" class="sr-only-focusable">Address :</label>
        <input type="text" name="Add" class="form-control" placeholder="ADDRESS HERE" required autofocus>
        <label for="inputZipCode" class="sr-only-focusable">Zip Code :</label>
        <input type="text" name="zip" class="form-control" placeholder="AREA CODE" required autofocus>
<!--    <label for="usertype" class="sr-only-focusable">User Type</label>
        <input type="text" name="usertype" class="form-control" placeholder="USER TYPE" required autofocus>   -->
        <br>
    <center> <button class="btn btn-success " type="submit">Sign In</button>
        <span></span>
        <button class="btn btn-danger" type="button" onclick="history.go(-1);return true;">Back</button><br></center>
        <p><center>
            already have an account ? 
            <a id="link" class="btn btn-link" href="LoginPage.jsp" style="font-weight:bold" >LOGIN HERE</a>
            
    </center> </p>
        </form>
        </div>
  
   <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
   <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
