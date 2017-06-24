<%-- 
    Document   : contactus
    Created on : May 27, 2017, 10:21:09 PM
    Author     : sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <style>
            body{
  margin: 0 auto;
background-color: #449d44;
    }
        </style>
    </head>
    <body>
        <img class="header" src="images/Ford-car-3.jpg" width="100%" height="40%" >
        <div class="container">
        <div class="container-fluid">
           <form class="form-contactus">
        <h2 class="form-signin-heading">Contact Us</h2>
        <label for="fname" class="sr-only-focusable">Full Name*</label>
        <input type="text" id="fname" class="form-control"  placeholder="enter your ful name" required autofocus>
           <label for="fname" class="sr-only-focusable">Phone No.*</label>
        <input type="text" id="fname" class="form-control" placeholder="mobile number/contact number" required autofocus>
           <label for="fname" class="sr-only-focusable">Contact E-mail*</label>
        <input type="text" id="fname" class="form-control" placeholder="E-mail address" required autofocus>
           <label for="fname" class="sr-only-focusable">Subject*</label>
        <input type="text" id="fname" class="form-control" placeholder="subject" required autofocus>
           <label for="fname" class="sr-only-focusable">Massage*</label>
        <input type="text" id="fname" class="form-control" placeholder="type your massage here" required autofocus>
        <br>         
        <div class="send"> <input type="submit" name="Submit" id="Submit"   class="commonbtnred"  onclick="_gtm_push 
             ( 'Company |Contact us', 'contact us form submit',window.location.href, 'event Company |Contact us form submit');"> </div>             
      </form>
    </div>
        </div>
        <br>
        <br>
        <div class="container">
    <div class="adpading">
        <div style="text-align:left;"><p><strong>For urgent inquiries, you may call us directly.Please call the number appropriate to your query.</strong></p></div>
        <div style="text-align:left;"><p><strong>Dealership</strong> Inquiries, please call 9000012345 </p></div>
        <div style="text-align:left;"><p>If you have <strong>bought a car </strong>or are looking <strong>to buy a car</strong>, please call 9001112345</p></div>
        <div style="text-align:left;"><p>If your car is <strong>listed for sale </strong>on buy and sell.com,  please mail  buyandselllisting@gmail.com</p></div>
        <div style="text-align:left;"><p> For <strong>Advertising queries</strong>, please contact jay on jay@gmail.com.</p></div>
 <div style="text-align:left;"><p>For <strong>Editorial contact and press releases</strong>, please contact sadik on alisadik99@gmail.com.</p></div>
        <br />
        <p style="line-height:25px;vertical-align:middle;">In case of any inquiry, feedback or request, please use the form below to contact us. We will get back to you as soon as possible.</p>
      </div>	
      </div>
	<div id="silifilm" class="popoverlay" style="display:none"></div>
<div id="thankyouiframe" style="display: none;height: 100%;left: 50%;margin-left: -310px;margin-top: -51px;position: fixed;top: 50%;width: 100%;z-index: 99999999;">
        <div style="display:table-cell; height:100%; width:100%; text-align:center; vertical-align:middle;">
    <div class="lightboxpop lightboxpop_new" style="padding:10px; width: 600px !important;">
    <div id="thankyouiframe1" style="height:110px">
    <a class="closebtn iframecl" onclick="close_contactus()"></a>
    <div id="thankyouiframe2" class="asxpertNew" style="height:140px">
    <div class="pop_not_elg">
        <p> Thank you for your interest in<strong> BuyAndSell.com</strong><br>We will contact you shortly. </p>
  </div>    
   </div>
    </div>
    </div>
 </div>
</div>
  </body>
</html>
