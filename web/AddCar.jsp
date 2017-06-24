<%-- 
    Document   : AddCar
    Created on : 18 May, 2017, 11:43:16 AM
    Author     : Sadik
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <title>add car Page</title>
        <style>
            body{
                background-color: #c9e2b3;
            }
        </style>
    </head>
    <body>
        
        <div class="container">
            <h1 aling="center" >HELLO MANAGER YOU CAN ADD CAR HERE</h1>
        
        </div>
            <hr><div class="container">
           
                    <h3>Car Details </h3>
                    <form method="post" action="addcar.do" class="form-horizontal" >

                        <div class="form-group">
                            <label class="col-lg-3 control-label">MAKE :</label>
                            <div class="col-lg-8">
                                <div class="ui-select">
          <select id="car_make" name="carMake" class="form-control">
                     <option value="">Select Car Make</option>
                      <option value="Maruti Suzuki">MARUTI SUZUKI</option>
                      <option value="Hyundai" >HYUNDAI</option>
                      <option value="Volkswagen" >VOLKSWAGEN</option>
                      <option value="Tata" >TATA</option>
                      <option value="Honda" >HONDA</option>
          </select>
                      </div>
                    </div>
                </div>
       <div class="form-group">
            <label class="col-lg-3 control-label">MODEL :</label>
       <div class="col-lg-8">
       <div class="ui-select">
           <select id="car_model" name="carModel" class="form-control">
                <option value="" >Select Car Model</option>
        <optgroup label="Maruti Suzuki"></optgroup>
                <option value="Ertiga">MS-ERTIGA</option>
                <option value="Swift">MS-SWIFT</option>
                <option value="S cross"> MS-S_CROSS</option>
                <option value="Alto K10">MS-ALTO K10</option>
        <optgroup label="Hyundai"></optgroup>
                <option value="Xcent">HY-XCENT</option>
                <option value="i10">HY-I10</option>
                <option value="i20">HY-I20</option>
                <option value="Creta">HY-CRETA</option>
        <optgroup label="Volkswagen"></optgroup>
                <option value="Polo-GT">VOL-POLO-GT</option>
                <option value="TIGUAN">VOL-TIGUAN</option>
                <option value="POLO-GTI">VOL-POLO-GTI</option>
                <option value="Beetle">VOL-BEETLE</option>
        <optgroup label="Tata"></optgroup>
                <option value="NANO">TATA NANO</option>
                <option value="SAFARI">TATA SAFARI</option>
                <option value="ARIA">TATA ARIA</option>
                <option value="INDIGO">TATA INDIGO-ECS</option>
        <optgroup label="Honda"></optgroup>
                  <option value="City">HONDA CITY </option>
                <option value="CR_V">HONDA CR-V</option>
                <option value="BRIO">HONDA BRIO</option>
                <option value="WR-V">HONDA WR-V</option>
              </select> </div>
                         </div>
                    </div>
              <div class="form-group">
          <label class="col-lg-3 control-label">VARIANT :</label>
           <div class="col-lg-8">
         <div class="ui-select">
             <select id="car_Variant" name="variant" class="form-control">
                  <option value="" >Car Variant</option>
                   <optgroup label="MS-ERTIGA "></optgroup>
                  <option value="LXI">LXI</option>
                  <option value="LXI(O)">LXI (O)</option>
                  <option value="LDI">LDI</option>
                  <option value="LDI(O)">LDI (O)</option>
                  <option value="VXI">VXI</option>
                  <option value="VDI">VDI</option>
                  <option value="VXI">VXI</option>
                  <option value="VDI">VDI</option>
                  <option value="ZXI">ZXI</option>
                  <option value="VXI CNG">VXI CNG</option>
                  <option value="ZDI">ZDI</option>
                  <option value="VXI AT">VXI AT</option>
                   <option value="ZDI PLUS">ZDI PLUS</option>
                  <option value="ZXI PLUS">ZXI PLUS</option>
                   <optgroup label="MS-SWIFT "></optgroup>
                  <option value="IV">LDI BS-IV</option>
                  <option value="LXI">LXI</option>
                  <option value="VDI ABS">VDI ABS</option>
                  <option value="VDI ABS BS-IV ">VDI ABS BS-IV</option>
                  <option value="VXI">VXI</option>
                  <option value="VXI ABS">VXI ABS</option>
                  <option value="ZDI">ZDI</option>
                  <option value="ZXI">ZXI</option>  
                  <option value="LDI BS-IV">LDI BS-IV</option>
                  <option value="LXI">LXI</option>
                  <option value="VDI ABS">VDI ABS</option>
                  
       <optgroup label=" MS-S_CROSS "></optgroup>
                   <option value="Sigma">DDiS 200 Sigma</option>
                  <option value="Delta">DDiS 200 Delta</option>
                  <option value=" Zeta">DDiS 200 Zeta</option>
                  <option value="DDiS 200 ">DDiS 200 Alpha</option>
                  <option value="DDiS 320">DDiS 320 Alpha</option>
                  
       <optgroup label=" MS-ALTO K10 "></optgroup>         
                  <option value="LX">LX</option>
                  <option value="LX(O)">LX(O)</option>
                  <option value="LXI">LXI</option>
                  <option value="LXI(O) ">LXI(O)</option>
                  <option value="VXI">VXI</option>
                  <option value="VXI (O)">VXI (O)</option>
                  <option value="LXI GAS">LXI GAS</option>
                  <option value="VXI AGS">VXI AGS</option>
                  <option value="LXI CNG (O">LXI CNG (O)</option>
                  <option value="VXI CNG (O)">VXI CNG (O)</option>
      <optgroup label="HY-XCENT"></optgroup> 
                  <option value="E Plus">E Plus Petrol</option>
                  <option value="E  ">E Diesel</option>
                  <option value="S "> S Petrol</option>
                  <option value="SX ">SX Petrol</option>
                  <option value="Diesel">E Plus Diesel</option>
                  <option value="S AT">S AT Petrol</option>
                  <option value="S">S Diesel</option>
                  <option value=" Petrol(O)">SX Petrol (O))</option>
                  <option value=" Diesel">SX Diesel)</option>
                  <option value="Diesel(O)">SX Diesel (O)</option>
    <optgroup label="HY-I10"></optgroup> 
                  <option value=" Era">1.1 Era</option>
                  <option value="Magna ">1.1 Magna</option>
                  <option value=" Edition"> 1.1 Magna Special Edition</option>
                  <option value=" MT">1.1 Sportz MT</option>
                  <option value="LPG">1.1 Sportz MT LPG</option>
    <optgroup label="HY-I20"></optgroup> 
                  <option value=" Base">1.2 Base</option>
                  <option value="1.2 S">1.2 S</option>
                  <option value="Base"> 1.4 Base</option>
                  <option value=" AVN">1.2 SX AVN</option>
                  <option value="1.4 S">1.4 S</option>
                  <option value=" AVN">1.4 SX AVN</option>
    <optgroup label="HY-CRETA"></optgroup> 
                  <option value=" Petrol">1.6 E Petrol</option>
                  <option value="E Plus">1.4 E Plus </option>
                  <option value=" E Plus"> 1.6 E Plus </option>
                  <option value=" S">1.4 S</option>
                  <option value="SX Plus">1.6 SX Plus </option>
                  <option value="S Plus">1.4 S Plus </option>
                  <option value="Dual Tone ">1.6 SX Plus Dual Tone</option>
                  <option value="1.6 SX">1.6 SX </option>
                  <option value="Plus AT">1.6 SX Plus AT</option>
                  <option value="Plus">1.6 SX Plus</option>
                  <option value=" AT">1.6 S Plus AT</option>
                  <option value="Edition"> 1.6 SX Plus Special Edition</option>
                  <option value="Tone">1.6 SX Plus Dual Tone</option>
                  <option value="SX(O)">1.6 SX (O)</option>
                  <option value=" Plus AT">1.6 SX Plus AT</option>
     <optgroup label="VOL-POLO GT"></optgroup>
                <option value="GT TSI">GT TSI</option>
                <option value="GT TDI">GT TDI</option>
                
    <optgroup label="VOL-Tiguan"></optgroup>  
                <option value="Comfortline">Tiguan Comfortline</option>
                <option value="Highline">Tiguan Highline</option>
    <optgroup label="VOL-POLO GTI"></optgroup>            
                <option value="GTI STD">GTI STD</option>
    <optgroup label="BEETLE"></optgroup>     
                <option value="1.4 TSI">1.4 TSI</option>
     <optgroup label="TATA NANO"></optgroup>
                 <option value="XE GenX">XE GenX</option>
                  <option value="XM GenX ">XM GenX</option>
                  <option value="XT GenX">  XT GenX</option>
                  <option value="XM CNG">XM CNG</option>
                  <option value="XMA ">XMA GenX</option>
                  <option value="XTA ">XTA GenX</option>
    <optgroup label="TATA SAFARI"></optgroup>
                <option value="4x2">2.2 LX 4x2</option>
                <option value="EX">2.2 EX 4x2</option>
               
     <optgroup label="TATA ARIA"></optgroup>           
             <option value="LX">LX 4x2 BS4</option>
               <option value="4*2">Pleasure 4x2 BS4</option>
              <option value="4*4">Pride 4x4</option>
                  
 <optgroup label="TATA INDIGO ECS"></optgroup>  
          <option value="GLS">eCS GLS MPFi BS4</option>
         <option value="LS"> eCS LS TDI BS III</option>
        <option value="eCS LS">eCS LS</option>
          <option value=" LX">eCS LX TDI BS III</option>
         <option value="eCS LX"> eCS LX</option>
       <option value="eCS VX">eCS VX</option>
    <optgroup label="HONDA CITY"></optgroup>  
          <option value="S">S</option>
         <option value="SV"> SV</option>
            <option value="V">V</option>
           <option value="SVI"> SVI</option>
          <option value="V CVT"> V CVT </option>
          <option value="V">V</option>
         <option value="VX">VX</option>
         <option value="VX CVT"> VX CVT</option>
           <option value="VX">VX</option>
          <option value="ZX CVT">ZX CVT</option>
         <option value="ZX"> ZX</option>
    <optgroup label="HONDA CR-V"></optgroup>  
           <option value="2.0L MT">2.0L MT</option>
           <option value="2.0L AT"> 2.0L AT</option>
           <option value="2.4L AT"> 2.4L AT</option>
     <optgroup label="HONDA BRIO"></optgroup>
          <option value="E MT">E MT</option>
          <option value="S MT"> S MT</option>
          <option value="VX MT"> VX MT</option>
          <option value="VX AT"> VX AT</option>     
             </select>   
         </div></div></div>
     <div class="form-group">
          <label class="col-lg-3 control-label">MFG YEAR :</label>
              <div class="col-lg-8">
           <input class="form-control" name="mfgYear" type="text" placeholder="MFG YEAR">
                            </div>
                        </div>  
        <div class="form-group">
          <label class="col-lg-3 control-label">FUEL :</label>
           <div class="col-lg-8">
         <div class="ui-select">
             <select id="car_fuel" name="carFuel" class="form-control">
                  <option value="" >Fuel Type</option>   
                  <option value="Diesel">Diesel</option>
                  <option value="Petrol">Petrol</option>
                  <option value="LPG">LPG</option>
                  <option value="CNG">CNG</option>
             </select>
         </div>
           </div>
              </div>
            <div class="form-group">
                   <label class="col-lg-3 control-label">OWNERS :</label>
                      <div class="col-lg-8">
                           <div class="ui-select">
                               <select id="car_owner" name="owners" class="form-control">
                                        <option value="" >Car Owner</option>
                                        <option value="1" >Company</option>
                                        <option value="2" >2</option>
                                        <option value="3">3 or More</option>
                               </select></div>
                            </div>
                        </div>  
          <div class="form-group">
               <label class="col-lg-3 control-label">PRICE :</label>
                  <div class="col-lg-8">
         <input class="form-control" type="text" name="price" placeholder="Price">
                            </div>
                        </div>  
            <div class="form-group">
           <label class="col-lg-3 control-label">KMS :</label>
                <div class="col-lg-8">
                <input class="form-control" type="text" name="kms" placeholder="Kms">
                </div>
                        </div>            
              <div class="form-group">
                 <label class="col-lg-3 control-label">MILEAGE :</label>
                 <div class="col-lg-8">
                 <input class="form-control" type="text" name="mileage" placeholder="Mileage">
                     </div>
                        </div>  
                         <div class="form-group">
                 <label class="col-lg-3 control-label">BRANCH :</label>
                 <div class="col-lg-8">
                 <input class="form-control" type="text" name="branch" placeholder="Branch">
                     </div>
                        </div> 
                 
           <div class="form-group">
               <label class="col-md-3 control-label"></label>
                <div class="col-md-8">
                   <input type="submit" class="btn btn-primary" value="Save">
                          <span></span>
                 <input type="reset" class="btn btn-warning" value="Cancel">
                  </div>
               </div>
                    </form> 
            </div><hr> 
            
         
 
             
 <script type="text/javascript" src="js/jquery-3.2.1.js"></script>
 <script type="text/javascript" src="js/bootstrap.min.js"></script>
    
    </body>
</html>
