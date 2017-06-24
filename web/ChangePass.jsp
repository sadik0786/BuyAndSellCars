<%-- 
    Document   : ChangePass
    Created on : 8 Jun, 2017, 11:43:16 AM
    Author     : Sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>change password page</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style>
  
    </style>

</head>
<body>
        <div  class="container">
           
            <form class="ChangePassword" method="post" name="f2" target="ContentFrame" action="passchange.do" >
             <div  style="text-align:center;margin:auto;color:pink;font-size:40px;font-weight:bold">
      CHANGE YOUR PASSWORD
                </div>
                 <label for="email" class="sr-only-focusable">EMAIL ID:</label>
                 <input name="email" type="text" class="form-control" placeholder="Enter Your Email Id" required autofocus>
                 <label for="oldpassword" class="sr-only-focusable">OLD PASSWORD:</label>
                 <input name="OldPassword" type="password" class="form-control" placeholder="Old Password" required autofocus>
                 <label for="newpassword" class="sr-only-focusable">NEW PASSWORD:</label>
                 <input name="NewPassword" type="password" class="form-control" placeholder="New Password" required autofocus>
                 <label for="newpassword" class="sr-only-focusable">CONFIRM PASSWORD:</label>
                 <input name="ConfirmPassword" type="password" class="form-control" placeholder="Confirm Password">
                 <br>
        <input type="submit" name="submit" class="btn btn-success" onclick="ChangePassword" value=" Save">
        <span></span>
        <input type="reset" class="btn btn-warning" value="Cancle">
        </form>
        </div>
          
        
     
<script language="javascript">   
 Function f2()
 {
 if(document.ChangePassword.OldPassword.value == "")
 {
 alert('Please input old password');
 document.ChangePassword.OldPassword.focus();
 return false;
 }
 if(document.ChangePassword.NewPassword.value == "");
 {
     alert('Pleaseinput password');
     document.ChangePassword.NewPassword.fucos();
     return false;
 }
 if(document.ChangePassword.ConfirmPassword.value == "");
 {
    alert('Please input confirm password');
    document.ChangePassword.ConfirmPassword.focus();
    return false;
    }
    if(document.ChangePassword.NewPassword.value != document.ChangePassword.ConfirmPassword.value)
    {
        alert('Confirm Password Not Match');
        document.ChangePassword.ConfirmPassword.focus();
        return false;
    document.ChangePassword.submit();
        }
}
</script>


    
   <!-- Set Server = CreateObject("UserManager.Server")
  Server.Select ""
  Server.ChangePassword document.forms.Password.OldPassword.Value, document.forms.Password.NewPassword.Value
  MsgBox "Password was changed to " & document.forms.Password.NewPassword.Value
 End Function -->



<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </body>
</html>
