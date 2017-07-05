<%-- 
    Document   : CustomerUploadFile
    Created on : 5 Jul, 2017, 11:26:56 AM
    Author     : Sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <title>Customer Upload Car Page</title>
    </head>
    <body>
        <%=request.getAttribute("carId") %>
        <div class="container">
            <div  style="text-align:center;margin:auto;color:red;font-size:40px;font-weight:bold">
                ADD CAR IMAGE HERE....</div>
            <div class="row">
               <div class="col-md-3">
                 <div class="text-center">
               <img id="file" src="images/img_avatar2.png" class="avatar img-thumbnail" alt="avatar">
              <h5>Upload a different photo....</h5>
     <form action="customerupload.do?carId=<%=request.getAttribute("carId")%>" method="post" enctype="multipart/form-data">
             <input type="file" name="file" class="form-control">  
             <br>
        <br><br><br>
       <input type="submit" class="btn btn-primary"  value="Save Image">
        <span></span>
        <input type="reset" class="btn btn-warning" value="Cancel">
        </form>
                    </div>
                </div>
            </div>
        
              </div>
        
        
        
               
         <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
