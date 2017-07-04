<%-- 
    Document   : AdminHome
    Created on : 7 Jun, 2017, 12:55:56 PM
    Author     : Sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manager home</title>
          
        <link rel="stylesheet" type="text/css" href="cssstyle/ManagerHome.css">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
          <style>
            body{
                background: #9acfea;
            }
        </style>
    </head>
    <body>
       <div id="header">
  <img id="logo" src="images/logo2.png" class="img-responsive">
<form id="search">
    <input type="text" name="search" class="img-rounded " placeholder="Search..">
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
          <center><h2>BUY AND SELL CARS</h2></center>
 
     </div>
      <div id="navbar3" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-left">
            <li ><a href="ManagerPage.jsp" class="btn btn-lg" target="ContentFrame">HOME</a></li>
            <li><a href="AboutUsPage.jsp" class="btn btn-lg" target="ContentFrame" >ABOUT US</a></li>
          <li><a  href="ContactUsPage.jsp" class="btn btn-lg" target="ContentFrame">CONTACT US</a></li>
          <li><a href="FAQs.jsp" class="btn btn-lg" target="ContentFrame">FAQ</a></li>
           <li class="dropdown">
              <a href="#" class="dropdown-toggle" class="btn btn-lg" data-toggle="dropdown" role="button" aria-haspopup="true"
                 aria-expanded="false"> UPDATE <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a target="ContentFrame" href="AddCar.jsp">Add New Car</a></li>
                <li><a target="ContentFrame" href="ModifyPage.jsp">Update Car</a></li>
                <li><a target="ContentFrame" href="OrderStatus.jsp">Order Status</a></li>
                <li><a target="ContentFrame" href="OrderModifyPage.jsp">Cancel Order</a></li>  
              </ul> </li>
        </ul>
               <ul  class="nav navbar-nav navbar-right">
              <c:if test="${not empty loginId}">
                  <li><a href="EditProfile.jsp"><p style="color:pink; font-size:20px">Hello ${loginId}</p></a></li>
              </c:if>
           <li><a target="_blank" href="Javascript:if(confirm('Do you want to logout?'))
	{document.location='?logout=now';}Logout.do" class="btn btn-lg" >Log Out</a></li>
          </ul>
<!--          <ul class="nav navbar-nav navbar-right">
               <li><a target="ContentFrame" href="Javascript:if(confirm('Do you want to logout?'))
	{document.location='?logout=now';}Logout.do">LOG OUT</a></li>
          </ul>
  <ul class="nav navbar-nav navbar-right">
  <li><a target="ContentFrame" class="btn btn-lg" href=".jsp"></a></li>
          </ul>-->
      </div>
    </div><!--/.container-fluid -->
  </nav>
   </div>
  <div class="row" id="container">
  <IFRAME seamless="seamless" scrolling="no" src="GalleryAdmin.html" id="frame1" name="NavigationFrame" width="25%" height="700"></IFRAME>
  <IFRAME seamless="seamless" scrolling="yes" src="ManagerPage.jsp" id="frame2" name="ContentFrame" width="74%" height="700"></IFRAME>
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
