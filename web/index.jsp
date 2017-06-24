<%-- 
    Document   : index
    Created on : 10 May, 2017, 2:12:29 PM
    Author     : Sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta http-equiv="X-UA-Compatible" content="IE=edge">
       <meta name="viewport" content="width=device-width,initial-scale=1">
        <title>index page</title>
        <link rel="stylesheet" type="text/css" href="cssstyle/index.css">
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <style>
            body{
                background: #9acfea;
            }
        </style>
        <script>
            var request=new XMLHttpRequest();
            function searchinfo(){
                var name=document.searchform.name.value;
                var url="index.jsp?val="+name;
                try{
                    request.onreadystatechange=function (){
                        if(request.readyState==4){
                            var val=request.responseText;
                            document.getElementById('mylocation').innerHTML=val;
                        }
                    }//end of function
                    request.open("GET",url,true);
                    request.send();
                }catch(e){alert("Unable to connect to server");}
            }
            </script>
            
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
  <form name="searchform" id="search">
    <input type="text" name="search" class="img-rounded " onkeyup="searchinfo()" placeholder="Search..">
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
   <h2>BUY AND SELL CARS</h2>
 
     </div>
      <div id="navbar3" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-left">
            <li ><a href="HomePage.jsp" class="btn btn-lg" target="ContentFrame">HOME</a></li>
            <li><a href="AboutUsPage.jsp" class="btn btn-lg" target="ContentFrame" >ABOUT US</a></li>
          <li><a  href="ContactUsPage.jsp" class="btn btn-lg" target="ContentFrame">CONTACT US</a></li>
          <li><a href="FAQs.jsp" class="btn btn-lg" target="ContentFrame">FAQ</a></li>
<!--          <li id="flip" class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                 aria-expanded="false">PROFILE <span class="caret"></span></a>
                 <ul id="panel" class="dropdown-menu">
                  <li><a  target="_blank"   href="ManagerHome.jsp">manager page</a></li>
                  <li><a  target="_blank"   href="UserHome.jsp">user page</a></li>
              </ul> </li>-->
        </ul>
  <ul class="nav navbar-nav navbar-right">
      <li><a target="ContentFrame" class="btn btn-lg" href="LoginPage.jsp">LOG IN</a></li>
  <li><a target="ContentFrame" class="btn btn-lg" href="SignUpPage.jsp">SIGN UP</a></li>
          </ul>
      </div>
    </div><!--/.container-fluid -->
  </nav>
   </div>
  <div class="row" id="container">
  <IFRAME seamless="seamless" scrolling="no" src="Gallery.html" id="frame1" name="NavigationFrame" width="29%" height="700" > </IFRAME>

  <IFRAME seamless="seamless" scrolling="yes" src="HomePage.jsp" id="frame2" name="ContentFrame" width="70%" height="700" ></IFRAME>
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
