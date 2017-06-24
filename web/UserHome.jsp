<%-- 
    Document   : UserPage
    Created on : 5 Jun, 2017, 2:05:02 PM
    Author     : Sadik
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>User Home page</title>
        
        <link rel="stylesheet" type="text/css" href="cssstyle/UserHome.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
          <style>
            body{
                background: #9acfea;
            }</style>
              <script>
            $(document).ready(function (){
                $("#flip").hover(function (){
                    $("#panel").slideToggle("fast");
                });
            });
        </script>
</head>
<body>
    <div id="header">
      <img id="logo" src="images/carlogo.png" class="img-responsive">
     <form id="search">
        
    <input type="text" name="search" class="img-responsive " placeholder="Type....." >
    <input type="button" class="img-circle" value="Search">
</form></div>
 <div class="container-fluid">
 <div class="row" id="siteheader"> 
<nav class="navbar navbar-inverse navbar-static-top">
    <div class="container-fluid"  style="background-color: #1b6d85" >
        <div class="navbar-header">
<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar3">
  <span class="sr-only">Toggle navigation</span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
  <span class="icon-bar"></span>
</button>
            
 
     </div>
      <div id="navbar3" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-left">
            <li ><a href="UserPage.jsp" class="btn btn-lg" target="ContentFrame">HOME</a></li>
            <li><a href="AboutUsPage.jsp" class="btn btn-lg" target="ContentFrame" >ABOUT US</a></li>
          <li><a  href="ContactUsPage.jsp" class="btn btn-lg" target="ContentFrame">CONTACT US</a></li>
          <li><a href="FAQs.jsp" class="btn btn-lg" target="ContentFrame">FAQ</a></li>
          
          <li id="flip" class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                 aria-expanded="false"> MY PROFILE <span class="caret"></span></a>
                 <ul id="panel" class="dropdown-menu">
                     <li><a target="ContentFrame" href="EditProfile.jsp" class="btn btn-warning" >My Profile</a></li>
                     <li><a target="ContentFrame" href="ChangePass.jsp" class="btn btn-success" >Change Password</a></li>
                     <li><a target="_blank" href="Logout.do" class="btn btn-danger" >Log Out</a></li>
                 </ul>
          </li>
        </ul>
          <ul  class="nav navbar-nav navbar-right">
              <c:if test="${not empty loginId}">
                  <li><a href="EditProfile.jsp"><p style="color:yellow; font-size:20px">Welcome ${loginId}</p></a></li>
              </c:if>
           <li><a target="_blank" href="Logout.do" class="btn btn-lg" >Log Out</a></li>
          </ul>
 <!-- <ul class="nav navbar-nav navbar-right">
  <li><a target="_blank" class="btn btn-lg" href="Javascript:if(confirm('Do you want to logout?'))
	{document.location='/navbar/?logout=now';}LoginPage.jsp">LOG OUT</a></li>
          </ul> -->
      </div>
    </div><!--/.container-fluid -->
  </nav>
   </div>
  <div class="row" id="container">
  <IFRAME seamless="seamless" scrolling="no" src="GalleryUser.html" id="frame1" name="NavigationFrame" width="25%" height="700" > </IFRAME>

  <IFRAME seamless="seamless" scrolling="yes" src="UserPage.jsp" id="frame2" name="ContentFrame" width="74%" height="700" ></IFRAME>
  </div>
     <footer>
        <div class="container-fluid" style="background-color: black">
    <div class="row">
    <div class="col-lg-12  text-danger text-center text-muted" >
    <p class="pull-right">
    <a href="#">Back to top</a></p>
        <p>
            &copy; 2017 &middot; Buy&SellCars &middot; <a target="ContentFrame" href="PrivacyPolicy.htm">Privacy&Escr;Terms</a>
        </p>
    </div>
    </div>
    </div>
    </footer>
        </div>
       <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
       <script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>

 

