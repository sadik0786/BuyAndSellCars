<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="cssstyle/LoginPage.css">
<link rel="stylesheet" type="text/css" href="css/font.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"> 
</head>

<body>
<div class="container">
    <div>
        <center><img src="images/img_avatar2.png" class="img-responsive" alt="this is img"></center>
    </div>
    <form class="login" method="post" target="_parent" action="Login.do">
 <div  style="text-align:center;margin:auto;color:pink;font-size:40px;font-weight:bold">
Please Sign In
</div>
        <label for="userid" class="sr-only-focusable">User Id</label>
        <input type="userid" name="txtuserid" class="form-control" placeholder="Enter User Id" required autofocus><br>
        <label for="inputPassword" class="sr-only-focusable">Password</label>
        <input type="password" name="pass" class="form-control" placeholder="Enter Password" required autofocus>
        <div class="checkbox">
          <label><input type="checkbox" value="remember-me"> Remember me</label>
        </div>
        <button class="btn btn-primary btn-block" type="submit">Sign in</button><br>
        <p><center>
             New User?
             <a href="SignUpPage.jsp" style="color:yellowgreen; font-weight:bold" >CLICK HERE TO REGISTER!</a>
        </center> </p>
      </form>

    </div> <!-- /container -->




 <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>