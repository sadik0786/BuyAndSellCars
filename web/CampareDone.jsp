<%-- 
    Document   : CampareDone
    Created on : 3 Jul, 2017, 2:56:47 PM
    Author     : Sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>Compare done Page</title>
    </head>
    <body>
         <form name="COMPARE" method="POST" action="comp.do" >
            <div class="col-md-5" class="left">
             <div class="col-md-5">
             <div class="test-center">
      <h3 style="color:red"><strong> CAR 1</strong></h3>
          </div>
             </div>
                
            
              <table class="compare-cars-table compare-cars-pick" cellpadding="10" align='center'>
        <thead >
        <div class="form-group-md-5">
         <label for="make" class="sr-only-focusable">Make:</label>
         <input type="text" name="make" class="form-control" value="<%out.print(request.getAttribute("m2"));%>">
         </div>
        <br>
        <div class="form-group-md-5">
        <label for="model" class="sr-only-focusable">Model:</label>
        <input type="text" name="model" class="form-control" value="<%out.print(request.getAttribute("md2"));%>">
         </div>  
      </thead>
      </table>
        </div>


    <div class="col-md-5" class="right" style="padding-bottom: 40px">
        <div class="col-md-5">
            <div class="test-center">
                <h3 style="color:yellow"><strong> CAR 2</strong></h3>
            </div></div>
    <table  align='center'>
        <thead >
        <div class="form-group-md-5">  
        <label for="make" class="sr-only-focusable">Make:</label>
        <input type="text" name="make" class="form-control" value="<%out.print(request.getAttribute("m1"));%>">
        </div>
         <br>
        <div class="form-group-md-5">
        <label for="model" class="sr-only-focusable">Model:</label>
        <input type="text" name="model" class="form-control" value="<%out.print(request.getAttribute("md1"));%>">
        </div>
          </thead>
           </table>
             </div>
    
         </form>

    
    
    
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
<!--        <label for="make" class="sr-only-focusable">Make:</label>
        <input type="text" name="make" class="form-control" value="<%out.print(request.getAttribute("m1"));%>">
        <label for="model" class="sr-only-focusable">Model:</label>
        <input type="text" name="model" class="form-control" value="<%out.print(request.getAttribute("md1"));%>">
        <br>
        
        <label for="make" class="sr-only-focusable">Make:</label>
        <input type="text" name="make" class="form-control" value="<%out.print(request.getAttribute("m2"));%>">
        <label for="model" class="sr-only-focusable">Model:</label>
        <input type="text" name="model" class="form-control" value="<%out.print(request.getAttribute("md2"));%>">
        -->
        <%
            String s = request.getAttribute("c1").toString();
        if (s.equals("1")) {
               %>
               <br/>     <h1>Car 1 is better</h1>
        <%
            }
        else{
               %>
               <br/>     <h1>Car 2 is better</h1>
        <%
           
        }
        %>
    </body>
</html>
