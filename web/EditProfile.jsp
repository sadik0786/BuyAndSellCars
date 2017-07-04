<%-- 
    Document   : editpage
    Created on : 3 Jun, 2017, 11:25:11 AM
    Author     : sadik
--%>

<%@page import="com.niit.model.*"%>
<%@page import="com.pro.dao.*"%>
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
                <%
                UserDAO d = new UserDAOImp();
                String t = request.getParameter("txtlid");
                System.out.println("value of t is "+t);
                String s[]= d.getUserById(t.trim());
                
                %>
                <form class="form-horizontal" role="form" action="edit.do" method="post" >
                   <div class="form-group">
                            <label class="col-lg-3 control-label">First Name:</label>
                            <input  type="hidden" name="txtid" value="<%out.print(s[0]);%>" >
                            <div class="col-lg-6">
                                <input  value="<%out.print(s[1]);%>" class="form-control" type="text" name="fname" placeholder="First Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Last Name:</label>
                            <div class="col-lg-6">
                                <input class="form-control"   value="<%out.print(s[2]);%>" type="text" name="lname" placeholder="Last Name">
                            </div>
                        </div>
                       
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Mobile:</label>
                            <div class="col-lg-6">
                                <input class="form-control" value="<%out.print(s[3]);%>" type="text" name="mob" placeholder="Mobile No."> 
                            </div>
                        </div>
                         <div class="form-group">
                            <label class="col-lg-3 control-label">Email:</label>
                            <div class="col-lg-6">
                                <input class="form-control"value="<%out.print(s[4]);%>" type="text" name="email" placeholder="Email Id"> 
                            </div>
                        </div>
                           <div class="form-group">
                            <label class="col-lg-3 control-label">Address:</label>
                            <div class="col-lg-6">
                                <input class="form-control"  value="<%out.print(s[5]);%>" type="text" name="address">
                            </div>
                        </div>
                        <div class="form-group">
                   <label class="col-md-3 control-label"></label>
                    <div class="col-md-6">
                        <button type="submit"  class="btn btn-success" >SUBMIT</button>
                  </div>
               </div>
                    </form>
                    
                        </div> 
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
