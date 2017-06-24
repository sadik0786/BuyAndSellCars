<%-- 
    Document   : editpage
    Created on : 3 Jun, 2017, 11:25:11 AM
    Author     : sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit profile Page</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <style>
            *{margin: 5px; padding: 1px;}
            .container img{
              width:160px;
              height:140px;
              margin: auto;
                   }           
        </style>
    </head>
    <body>
        <div  class="container">
             <div  style="text-align:center;margin:auto;color:pink;font-size:40px;font-weight:bold">
                  CHANGE YOUR PROFILE HERE
                         </div>
          
            <div class="row">
                <!--left column-->
                <div class="col-lg-6">
                    <div class="text-center">
                        <img src="images/img_avatar2.png" class="avatar img-circle" alt="avatar">
                        <h5>Upload a different photo....</h5>
                        <input type="file" name="file" class="form-control">  
                    </div>
                </div>
                <!--edit form column-->
            
                    <form class="form-horizontal" role="form" name="" method="post" >
                        <div class="form-group">
                            <label class="col-lg-3 control-label">First Name:</label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" name="fname" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Last Name:</label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" name="lname" placeholder="Last Name">
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Mobile:</label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" name="mob" placeholder="Mobile No."> 
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" name="email" placeholder="Email Id"> 
                            </div>
                        </div>
                    <!--    <div class="form-group">
                            <label class="col-lg-3 control-label">state:</label>
                            <div class="col-lg-6">
                                <div class="ui-select">
                                    <select id="car_model" class="form-control" name="state">
                                        <option value="">Select</option>
                                        <option value="1">Andhra Pradesh</option>
                                        <option value="2">Arunachal Pradesh</option>
                                        <option value="3">Assam</option>
                                        <option value="4">Bihar</option>
                                        <option value="5">Chhattisgarh</option>
                                        <option value="6">Delhi</option>
                                        <option value="7">Goa</option>
                                        <option value="8">Gujarat</option>
                                        <option value="9">Haryana</option>
                                        <option value="10 ">Himachal Pradesh</option>
                                         <option value="11">Jammu&Kashmir</option>
                                        <option value="12">Jharkhand</option>
                                        <option value="13">Karnataka</option>
                                        <option value="14">Kerala</option>
                                        <option value="15">Madhya Pradesh</option>
                                        <option value="16">Maharashtra</option>
                                         <option value="17">Manipur</option>
                                        <option value="18">Meghalaya</option>
                                        <option value="19">Mizoram</option>
                                        <option value="20">Nagaland</option>
                                        <option value="21">Odisha</option>
                                        <option value="22">Punjab</option>
                                        <option value="23">Rajasthan</option>
                                        <option value="24">Sikkim</option>
                                        <option value="25">Tamil Nadu</option>
                                        <option value="26">Telangana</option>
                                        <option value="27">Tripura</option>
                                        <option value="28">Uttar Pradesh</option>
                                        <option value="29">Uttarakhand</option>
                                        <option value="30">West Bengal</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-lg-3 control-label">city:</label>
                            <div class="col-lg-6">
                                <div class="ui-select">
                                    <select id="car_model" class="form-control" name="city">
                                        <option value="" >Select</option>  
                                        <option value="1">Hyderabad</option>
                                        <option value="2">Itanagar</option>
                                        <option value="3">Dispur</option>
                                        <option value="4">Patna</option>
                                        <option value="5">Raipur</option>
                                        <option value="6">Delhi</option>
                                        <option value="7">Panaji</option>
                                        <option value="8">Gandhinagar</option>
                                        <option value="9">chandigarh</option>
                                        <option value="10">Shimla</option>
                                        <option value="11">Srinagar</option>
                                        <option value="12">Rachi</option>
                                        <option value="13">Bengaluru</option>
                                        <option value="14">Thiruvananthapuram</option>
                                        <option value="15">Bhopal</option>
                                        <option value="16">Mumbai</option>
                                         <option value="17">Imphal</option>
                                        <option value="18">Shillong</option>
                                        <option value="19">Aizawl</option>
                                        <option value="20">Kohima</option>
                                        <option value="21">Bhubaneswar</option>
                                        <option value="22">Chandigarh</option>
                                        <option value="23">Jaipur</option>
                                        <option value="24">Gangtok</option>
                                        <option value="25">Chennai</option>
                                        <option value="26">Hyderabad</option>
                                        <option value="27">Agrtala</option>
                                        <option value="28">Lucknow</option>
                                        <option value="29">Dehradhun</option>
                                        <option value="30">Kolkata</option>
                                    </select>
                                </div>
                            </div>
                        </div>  -->
                           <div class="form-group">
                            <label class="col-lg-3 control-label">Address:</label>
                            <div class="col-lg-6">
                                <input class="form-control" type="text" name="address">
                            </div>
                        </div>
                         <!--  <div class="form-group">
                            <label class="col-lg-3 control-label">office address:</label>
                            <div class="col-lg-8">
                                <input class="form-control" type="text" value="">
                            </div>
                        </div>  -->
                      <div class="form-group">
      <label class="col-md-3 control-label"></label>
    <div class="col-md-6">
             <input type="button" class="btn btn-success" value="Save Detail">
        <span></span>
        <input type="reset" class="btn btn-warning" value="Cancel">
                  </div>
               </div>
                    </form>
                    
                </div>
                </div>
       
        
    
  <script type="text/javascript" >
   for(i in city_list )
     {
   document.write("<option value='" + i + "' >" + i + "</option>");
     }
         </script>
        
        
        
         <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
